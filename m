From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v2] media: rockchip/rga: fix potential use after free
Date: Mon, 11 Nov 2019 09:03:17 -0300
Message-ID: <9c46d5a708814082cc0c8a94e53e9e21a12271f1.camel@collabora.com>
References: <1573460902-18563-1-git-send-email-bianpan2016@163.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1573460902-18563-1-git-send-email-bianpan2016@163.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Pan Bian <bianpan2016@163.com>, Jacob Chen <jacob-chen@iotwrt.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Pan Bian,

Thanks for the patch.

On Mon, 2019-11-11 at 16:28 +0800, Pan Bian wrote:
> The variable vga->vfd is an alias for vfd. Therefore, releasing vfd and
> then unregister vga->vfd will lead to a use after free bug. In fact, the
> free operation and the unregister operation are reversed.
> 

Out of curiosity, how did you find this potential bug?

Acked-by: Ezequiel Garcia <ezequiel@collabora.com>

Regards,
Ezequiel
