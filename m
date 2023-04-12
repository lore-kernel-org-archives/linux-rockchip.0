Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49713C7619A
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Apr 2023 16:40:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:
	Cc:To:Subject:MIME-Version:Date:Message-ID:Content-Type:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VyaKX2ZL/ct6PB9F4PuFF+yz/Sbe75wrnNuSokYmxls=; b=f07nE8ZfvkUqPYg/kJ1o1MNOd8
	6wuoxDTJ4NvAiDLAsPM0cEwQ9nihNzhkhWmN9IWfGMhqPOK8F1mO/HmMiwCVpFLTvwbVzhzFfw8A3
	V54ZJreP6REpsplRv8ewm29dXbh0j+pJT2wdNax1YzO4+t2LdakWUsch5CCDhx8OM4a0bACA/ZyGp
	9jj8NodBF+JMFjx4R2oyfWIYWySnSB3pdJaFcQkxQk8q7qVOfXio3pR5jy9XUzMF5Zsv/yTo82H67
	okTcZLULOLaNNdhHf+2c5CsRhJAdsKdiJzak/EIHLTV/U43ffTubz8icZZwTqZJvzSsOzfTG80iHN
	AL/o5BxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmdWN-003qEP-2g;
	Wed, 12 Apr 2023 16:40:35 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmdWJ-003qCM-32;
	Wed, 12 Apr 2023 16:40:33 +0000
Received: from [IPV6:2a01:e0a:120:3210:c2e:89bd:4b8e:9e98] (unknown [IPv6:2a01:e0a:120:3210:c2e:89bd:4b8e:9e98])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8C05F6600011;
	Wed, 12 Apr 2023 17:40:29 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681317630;
	bh=40qgncWMpJsImu8j0tyhlnqKuv6wj7h9AE86nzJygBA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=YaQluPs3x1r3u84B59FyzTXFEKPsgHQq9czz2coLTcYajkhQgynleX1zKc007kNkS
	 fFMLBiS2aFwHzslouRSkP/MTbqGoX8sTw4rBYXMObG1kGsgasxIT1kcEcgnFFn1Ngz
	 jTAlQZbXwUZ9xPpwK+JBw1W7bZKvuejbMCFNOrrUnAQDbqxlLVLElp1ZXQOyz99d0U
	 k+78I2sjCJSoViEdoUBFpyt2l35wn8D0HNyhTHj7Kzy/GMjBN5GoCY0ymHohYiqoai
	 ip14c/F2CUtxCMelMnhB/z4wrlbAT7BYq5ZLwFsVGyfFPiKKVrl21omGv03Ba62nij
	 dO5Fte/m+BP3w==
Content-Type: multipart/mixed; boundary="------------0Rh70bg2G8NwMJJ0e06mZwQC"
Message-ID: <a0a00172-ce86-dfa2-267d-b318a9c076dc@collabora.com>
Date: Wed, 12 Apr 2023 18:40:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v9 1/6] media: verisilicon: Do not set context src/dst
 formats in reset functions
Content-Language: en-US
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-imx@nxp.com, hverkuil-cisco@xs4all.nl,
 nicolas.dufresne@collabora.co.uk, robert.mader@collabora.com
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel@collabora.com
References: <20230220104849.398203-1-benjamin.gaignard@collabora.com>
 <20230220104849.398203-2-benjamin.gaignard@collabora.com>
 <CGME20230412161415eucas1p1536b537c3f866e9820d3bea8bb9ea2d9@eucas1p1.samsung.com>
 <5fda9b2f-a339-8a23-dc7b-f1bac2c385b6@samsung.com>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <5fda9b2f-a339-8a23-dc7b-f1bac2c385b6@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_094032_235393_838E1FEB 
X-CRM114-Status: GOOD (  31.28  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This is a multi-part message in MIME format.
--------------0Rh70bg2G8NwMJJ0e06mZwQC
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


Le 12/04/2023 à 18:14, Marek Szyprowski a écrit :
> Hi,
>
> On 20.02.2023 11:48, Benjamin Gaignard wrote:
>> Setting context source and destination formats should only be done
>> in hantro_set_fmt_out() and hantro_set_fmt_cap() after check that
>> the targeted queue is not busy.
>> Remove these calls from hantro_reset_encoded_fmt() and
>> hantro_reset_raw_fmt() to clean the driver.
>>
>> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> This patch landed recently in linux-next as commit db6f68b51e5c ("media:
> verisilicon: Do not set context src/dst formats in reset functions").

Hi,

I do not have this board up and running with Hantro encoder but
I think the attached patch may solve the issue.
Could you tell me if it works ?

Regards,
Benjamin

>
> Unfortunately it causes the following regression during Debian boot on
> Odroid-M1 board:
>
> --->8---
>
> hantro-vpu fdea0000.video-codec: Adding to iommu group 0
> hantro-vpu fdea0000.video-codec: registered rockchip,rk3568-vpu-dec as
> /dev/video0
> hantro-vpu fdee0000.video-codec: Adding to iommu group 1
> hantro-vpu fdee0000.video-codec: registered rockchip,rk3568-vepu-enc as
> /dev/video1
> Unable to handle kernel NULL pointer dereference at virtual address
> 0000000000000008
> Mem abort info:
>     ESR = 0x0000000096000004
>     EC = 0x25: DABT (current EL), IL = 32 bits
>     SET = 0, FnV = 0
>     EA = 0, S1PTW = 0
>     FSC = 0x04: level 0 translation fault
> Data abort info:
>     ISV = 0, ISS = 0x00000004
>     CM = 0, WnR = 0
> user pgtable: 4k pages, 48-bit VAs, pgdp=00000001f446f000
> [0000000000000008] pgd=0000000000000000, p4d=0000000000000000
> Internal error: Oops: 0000000096000004 [#1] PREEMPT SMP
> Modules linked in: hantro_vpu v4l2_vp9 v4l2_h264 v4l2_mem2mem
> videobuf2_dma_contig snd_soc_simple_card display_connector
> snd_soc_simple_card_utils videobuf2_memops crct10dif_ce dwmac_rk
> rockchip_thermal videobuf2_v4l2 stmmac_platform rockchip_saradc
> industrialio_triggered_buffer kfifo_buf stmmac videodev pcs_xpcs
> rtc_rk808 videobuf2_common rockchipdrm panfrost mc drm_shmem_helper
> analogix_dp gpu_sched dw_mipi_dsi dw_hdmi drm_display_helper ip_tables
> x_tables ipv6
> CPU: 3 PID: 171 Comm: v4l_id Not tainted 6.3.0-rc2+ #13478
> Hardware name: Hardkernel ODROID-M1 (DT)
> pstate: 60400009 (nZCv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
> pc : hantro_try_fmt+0xb4/0x280 [hantro_vpu]
> lr : hantro_try_fmt+0xa8/0x280 [hantro_vpu]
> ...
> Call trace:
>    hantro_try_fmt+0xb4/0x280 [hantro_vpu]
>    hantro_set_fmt_out+0x3c/0x278 [hantro_vpu]
>    hantro_reset_raw_fmt+0x94/0xb4 [hantro_vpu]
>    hantro_set_fmt_cap+0x23c/0x250 [hantro_vpu]
>    hantro_reset_fmts+0x94/0xcc [hantro_vpu]
>    hantro_open+0xd4/0x20c [hantro_vpu]
>    v4l2_open+0x80/0x120 [videodev]
>    chrdev_open+0xc0/0x22c
>    do_dentry_open+0x13c/0x490
>    vfs_open+0x2c/0x38
>    path_openat+0x550/0x938
>    do_filp_open+0x80/0x12c
>    do_sys_openat2+0xb4/0x16c
>    __arm64_sys_openat+0x64/0xac
>    invoke_syscall+0x48/0x114
>    el0_svc_common.constprop.0+0xfc/0x11c
>    do_el0_svc+0x38/0xa4
>    el0_svc+0x48/0xb8
>    el0t_64_sync_handler+0xb8/0xbc
>    el0t_64_sync+0x190/0x194
> Code: 97fe726c f940aa80 52864a61 72a686c1 (b9400800)
> ---[ end trace 0000000000000000 ]---
>
> I know that v4l_id tool, which is a part of systemd/udev, is known to
> crash badly on various vendor kernels (fixing this would be a really
> hard, especially assuming the brokenness of some vendor hacks), but I
> hoped that at least it should not be able to crash the mainline kernel.
>
>
>> ---
>>    drivers/media/platform/verisilicon/hantro_v4l2.c | 9 ++-------
>>    1 file changed, 2 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
>> index c0d427956210..d8aa42bd4cd4 100644
>> --- a/drivers/media/platform/verisilicon/hantro_v4l2.c
>> +++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
>> @@ -382,13 +382,10 @@ hantro_reset_encoded_fmt(struct hantro_ctx *ctx)
>>    
>>    	vpu_fmt = hantro_get_default_fmt(ctx, true);
>>    
>> -	if (ctx->is_encoder) {
>> -		ctx->vpu_dst_fmt = vpu_fmt;
>> +	if (ctx->is_encoder)
>>    		fmt = &ctx->dst_fmt;
>> -	} else {
>> -		ctx->vpu_src_fmt = vpu_fmt;
>> +	else
>>    		fmt = &ctx->src_fmt;
>> -	}
>>    
>>    	hantro_reset_fmt(fmt, vpu_fmt);
>>    	fmt->width = vpu_fmt->frmsize.min_width;
>> @@ -408,11 +405,9 @@ hantro_reset_raw_fmt(struct hantro_ctx *ctx)
>>    	raw_vpu_fmt = hantro_get_default_fmt(ctx, false);
>>    
>>    	if (ctx->is_encoder) {
>> -		ctx->vpu_src_fmt = raw_vpu_fmt;
>>    		raw_fmt = &ctx->src_fmt;
>>    		encoded_fmt = &ctx->dst_fmt;
>>    	} else {
>> -		ctx->vpu_dst_fmt = raw_vpu_fmt;
>>    		raw_fmt = &ctx->dst_fmt;
>>    		encoded_fmt = &ctx->src_fmt;
>>    	}
> Best regards
--------------0Rh70bg2G8NwMJJ0e06mZwQC
Content-Type: text/x-patch; charset=UTF-8;
 name="0001-media-verisilicon-Fix-crash-when-probing-encoder.patch"
Content-Disposition: attachment;
 filename*0="0001-media-verisilicon-Fix-crash-when-probing-encoder.patch"
Content-Transfer-Encoding: base64

RnJvbSBjNjAxY2NjOWI5OGEzZjczNTQ5M2ZhZjg0ODdkYmZhNTllYzRlMGM2IE1vbiBTZXAg
MTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2Fp
Z25hcmRAY29sbGFib3JhLmNvbT4KRGF0ZTogV2VkLCAxMiBBcHIgMjAyMyAxODozODoyOSAr
MDIwMApTdWJqZWN0OiBbUEFUQ0hdIG1lZGlhOiB2ZXJpc2lsaWNvbjogRml4IGNyYXNoIHdo
ZW4gcHJvYmluZyBlbmNvZGVyCgpjdHgtPnZwdV9kc3RfZm10IGlzIG5vIG1vcmUgaW5pdGlh
bGl6ZWQgYmVmb3JlIGNhbGxpbmcgaGFudHJvX3RyeV9mbXQoKQpUaGlzIGxlZCB0byBjcmFz
aCB0aGUga2VybmVsLgoKU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmph
bWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+CkZpeGVzOiBkYjZmNjhiNTFlNWMgKCJtZWRp
YTogdmVyaXNpbGljb246IERvIG5vdCBzZXQgY29udGV4dCBzcmMvZHN0IGZvcm1hdHMgaW4g
cmVzZXQgZnVuY3Rpb25zIikKLS0tCiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxp
Y29uL2hhbnRyb192NGwyLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3ZlcmlzaWxpY29uL2hhbnRyb192NGwyLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Zl
cmlzaWxpY29uL2hhbnRyb192NGwyLmMKaW5kZXggOGYxNDE0MDg1ZjQ3Li5lOGJjYjZkNjY5
ZmMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFu
dHJvX3Y0bDIuYworKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hh
bnRyb192NGwyLmMKQEAgLTI5Nyw3ICsyOTcsNyBAQCBzdGF0aWMgaW50IGhhbnRyb190cnlf
Zm10KGNvbnN0IHN0cnVjdCBoYW50cm9fY3R4ICpjdHgsCiAJCXBpeF9tcC0+bnVtX3BsYW5l
cyA9IDE7CiAJCXZwdV9mbXQgPSBmbXQ7CiAJfSBlbHNlIGlmIChjdHgtPmlzX2VuY29kZXIp
IHsKLQkJdnB1X2ZtdCA9IGN0eC0+dnB1X2RzdF9mbXQ7CisJCXZwdV9mbXQgPSBmbXQ7CiAJ
fSBlbHNlIHsKIAkJdnB1X2ZtdCA9IGZtdDsKIAkJLyoKLS0gCjIuMzQuMQoK

--------------0Rh70bg2G8NwMJJ0e06mZwQC
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--------------0Rh70bg2G8NwMJJ0e06mZwQC--

