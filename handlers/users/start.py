from aiogram.types import Message
from aiogram.dispatcher.filters.builtin import CommandStart
from loader import dp


@dp.message_handler(CommandStart())
async def bot_start(message: Message):
    await message.answer(
        f"""
Assalomu alaykum, *{message.from_user.full_name}*!

Bu bot test generatsiya qilishingizga yordam beradi.

Botdan foydalanish oson. Video qo'llanmada nima qilish ko'rsatilgan. Shablon test fayl ham tashlab beriladi.
"""
    )
    await message.answer_photo(
        "https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-980x653.jpg",
    )
