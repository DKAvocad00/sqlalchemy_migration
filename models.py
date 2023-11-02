from datetime import datetime
from sqlalchemy import DateTime, ForeignKey, Integer, String, Double, Text
from sqlalchemy.orm import DeclarativeBase, Mapped, mapped_column, relationship


class Base(DeclarativeBase):
    pass


class Stock(Base):
    __tablename__ = "stock"

    id: Mapped[int] = mapped_column(Integer, primary_key=True, autoincrement=True)
    count: Mapped[int] = mapped_column(Integer, nullable=False)
    id_book: Mapped[int] = mapped_column(ForeignKey("book.id"), nullable=False)
    id_shop: Mapped[int] = mapped_column(ForeignKey("shop.id"), nullable=False)
    book: Mapped["Book"] = relationship("Book", back_populates="stocks")
    shop: Mapped["Stock"] = relationship("Shop", back_populates="shops")
    stocks = relationship("Sale", cascade="all,delete")


class Shop(Base):
    __tablename__ = "shop"

    id: Mapped[int] = mapped_column(Integer, primary_key=True, autoincrement=True)
    name: Mapped[str] = mapped_column(String(100), nullable=False)
    shops = relationship("Stock", cascade="all,delete")


class Sale(Base):
    __tablename__ = "sale"

    id: Mapped[int] = mapped_column(Integer, primary_key=True, autoincrement=True)
    price: Mapped[float] = mapped_column(Double, nullable=False)
    date_sale: Mapped[datetime] = mapped_column(DateTime, nullable=False, default=datetime.now)
    id_stock: Mapped[int] = mapped_column(ForeignKey("stock.id"), nullable=False)
    stock: Mapped["Stock"] = relationship("Stock", back_populates="stocks")


class Book(Base):
    __tablename__ = "book"

    id: Mapped[int] = mapped_column(Integer, primary_key=True, autoincrement=True)
    title: Mapped[str] = mapped_column(Text, nullable=False)
    id_publisher: Mapped[str] = mapped_column(ForeignKey("publisher.id"), nullable=False)
    publisher: Mapped["Publisher"] = relationship("Publisher", back_populates="books")
    stocks = relationship("Stock", cascade="all,delete")


class Publisher(Base):
    __tablename__ = "publisher"

    id: Mapped[int] = mapped_column(Integer, primary_key=True, autoincrement=True)
    name: Mapped[str] = mapped_column(String(150), nullable=False)
    books = relationship("Book", cascade="all,delete")
