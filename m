From: Jacob Chen <jacobchen110@gmail.com>
Subject: Re: [PATCH 1/5] [media] rockchip/rga: v4l2 m2m support
Date: Tue, 27 Jun 2017 23:45:14 +0800
Message-ID: <CAFLEztSVySd5iZFg7Oz3yGoR8zb2ik_qtBvVvmYfgX_zja_7RA@mail.gmail.com>
References: <1498488673-27900-1-git-send-email-jacob-chen@iotwrt.com> <CAAFQd5BHAiTq9f4nvwFiy5DzZ0Jep9d4K0saAkoxzaK86a8GJg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <CAAFQd5BHAiTq9f4nvwFiy5DzZ0Jep9d4K0saAkoxzaK86a8GJg@mail.gmail.com>
Sender: linux-media-owner@vger.kernel.org
To: Tomasz Figa <tfiga@chromium.org>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Linux Media Mailing List <linux-media@vger.kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hans.verkuil@cisco.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Tomasz,
Yeah, the comments are wrong, i will correct it

>> +        */
>> +       pages = (unsigned int *)__get_free_pages(GFP_KERNEL | __GFP_ZERO, 3);
>
> This is rather unfortunate and you should expect failures here on
> actively used systems with uptime longer than few hours. Changing this
> to dma_alloc_coherent() and enabling CMA _might_ give you a bit better
> success rate, but...
>
> Normally, this kind of (scatter-gather capable) hardware would allow
> some kind of linking of separate pages, e.g. last entry in the page
> would point to the next page, or something like that. Doesn't this RGA
> block have something similar?
>

Thx for pointing it out ! : )

I looked RGA drvier used in rockchip android and i find it use
kmalloc, so i think it might support separate pages.
I will test it.


> Best regards,
> Tomasz
