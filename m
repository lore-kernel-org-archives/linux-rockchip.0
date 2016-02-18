From: Jung Zhao <jung.zhao@rock-chips.com>
Subject: Re: [PATCH v2 3/4] [NOT FOR REVIEW] videobuf2-dc: Let drivers specify
 DMA attrs
Date: Thu, 18 Feb 2016 08:59:17 +0800
Message-ID: <CAD82f72vPddBJeDuRCG38-sopk6BPrY49ggAugeGQC_GUg-Fyw@mail.gmail.com>
References: <1455705673-25484-1-git-send-email-jung.zhao@rock-chips.com>
	<1455705771-25771-1-git-send-email-jung.zhao@rock-chips.com>
	<CAD=FV=V8tZvvqVCC4CMD9T-PYL+_3DojGq8jBEtm1raMYzw=3Q@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <CAD=FV=V8tZvvqVCC4CMD9T-PYL+_3DojGq8jBEtm1raMYzw=3Q@mail.gmail.com>
Sender: linux-media-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>
Cc: Mauro Carvalho Chehab <mchehab@osg.samsung.com>, Tomasz Figa <tfiga@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Hans Verkuil <hans.verkuil@cisco.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Philipp Zabel <p.zabel@pengutronix.de>, Guennadi Liakhovetski <g.liakhovetski@gmx.de>, Pawel Osciak <posciak@chromium.org>, Linux Media Mailing List <linux-media@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Doug,
Thanks for your work. I will fix this mistake.

2016-02-18 0:12 GMT+08:00 Doug Anderson <dianders@chromium.org>:
> Hi,
>
> On Wed, Feb 17, 2016 at 2:42 AM, Jung Zhao <jung.zhao@rock-chips.com>=
 wrote:
>> From: Tomasz Figa <tfiga@chromium.org>
>>
>> DMA allocations might be subject to certain reqiurements specific to=
 the
>> hardware using the buffers, such as availability of kernel mapping (=
for
>> contents fix-ups in the driver). The only entity that knows them is =
the
>> driver, so it must share this knowledge with vb2-dc.
>>
>> This patch extends the alloc_ctx initialization interface to let the
>> driver specify DMA attrs, which are then stored inside the allocatio=
n
>> context and will be used for all allocations with that context.
>>
>> As a side effect, all dma_*_coherent() calls are turned into
>> dma_*_attrs() calls, because the attributes need to be carried over
>> through all DMA operations.
>>
>> Signed-off-by: Tomasz Figa <tfiga@chromium.org>
>> Signed-off-by: Jung Zhao <jung.zhao@rock-chips.com>
>> ---
>> Changes in v2: None
>>
>>  drivers/media/v4l2-core/videobuf2-dma-contig.c | 33 +++++++++++++++=
++---------
>>  include/media/videobuf2-dma-contig.h           | 11 ++++++++-
>>  2 files changed, 32 insertions(+), 12 deletions(-)
>
> This patch is already present in linuxnext.  I submitted it to Russel=
l
> King's Patch Tracking System a bit ago and got notice that it landed.
> Checking linuxnext today I see:
>
> ccc66e738252 ARM: 8508/2: videobuf2-dc: Let drivers specify DMA attrs
>
> -Doug
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip



--=20
Best Regards,
Jung

****************************************
=E7=A6=8F=E5=B7=9E=E7=91=9E=E8=8A=AF=E5=BE=AE=E7=94=B5=E5=AD=90=E6=9C=89=
=E9=99=90=E5=85=AC=E5=8F=B8 (Rockchip)
=E8=B5=B5=E4=BF=8A (Jung Zhao)
=E7=AE=97=E6=B3=95=E5=B7=A5=E7=A8=8B=E5=B8=88 (Algorithm Engineer)
+86-591-83991906-8944
****************************************
