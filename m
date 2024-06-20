Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C8EBC27C79
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jun 2024 17:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OEwUeUZVHjRFrDttYsQf2bWuVHS2tV0L7paWNvZluBk=; b=lfcwzNPey/paSB
	OtXBWywliJiDXSRHMKXmK7qzv+w1BtjXiQwdbBNWvIP5mk1WWwQaawAuaPei4qC+WYDvj1xa0jYVz
	RkR0q4ve7w/6crx2Q+nhHAphpOwku/WuSVUKVgyS1ZxyQXCctn5DrsxMNhXDnQyWsz0Ei4MNnccl8
	jYApUVSqcjdl28VoWRD3bXwuvKMSie4Bjzx5JQZ0Mx78nqUiUkEStlbQlv+c85dOdlo8FDG1Z7BPF
	O4BdZyvuWCfbrvGPPLDo49Jk0cl5jvUUn0rB31PkNlmc1kig5IHuYtNhiN2wuIlNCcg3q/DvM9XQ9
	0reSsVxtSyXzIfwhvGBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKLkC-000000066MQ-1gl9;
	Thu, 20 Jun 2024 17:38:44 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKLk8-000000066Ku-2Sc0;
	Thu, 20 Jun 2024 17:38:42 +0000
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-1f47f07acd3so9349565ad.0;
        Thu, 20 Jun 2024 10:38:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718905120; x=1719509920; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4sG4Va9OdsdsAbudvNBTbNSzmionWI4fbzxfvxF/ZFU=;
        b=SjvPIdKuYug+GIo9P6Tb5X7FvPWVy8ACy040GmpTuNpr+r6p+UeivARrliP+rG/L7w
         zBN0G1b6HF9cxDGmvuEnhaGIbxb4YhEZOM2DI8nB/G81a/XDAyd3WwEFWx7zoUdfefuk
         k7pa3+IrUgttyH4aZGnO/SbeubwuQSte3JqC0jBLS0EQoGHaddV4M7LiLwsSI1yUvoem
         beYvvOwvdxVdrGiVaJtCBXbiNe/wNUkOthtuF1WPWbX7EobKqvQ7xmao+c+peBF30HIt
         716rsN5y3qc54MloObcOz5B+2MRWnCiqbC2wOX1+uXMDp7dYFfmzXTATbrZlDutSWr3M
         VRKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718905120; x=1719509920;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4sG4Va9OdsdsAbudvNBTbNSzmionWI4fbzxfvxF/ZFU=;
        b=sWOdabUE7R7cZ1I83XDuyG3xgw2orcUopwO++OZr9Bi4i1ghdWPvmzBP8tbfvY/XH7
         LLHnM4fccuZHg0iPDVykJe9B0Sd98oJHz9PbwFsju5X+GHHVXUgSp1WyqkQC8zXLfCrN
         lOk2R8rWuaH04rgnCuBtMe/N+Xb8I0grHj7p+hHWUSoid3JzoFP1efIOT6GRPWtu8Wmr
         DbYsv+v+q/I75vieCh0H1TiLkGG2vPUD9dHGACQL1eLO0HHEsaPnqSeLEgOfdVPbBi2Y
         sH5wP7UeYX2XTV4I/FE5DyQCtfV2l2eNnuVdDbepULUCmfpDso4FvjG27Jp8f3Tl86iE
         8A0A==
X-Forwarded-Encrypted: i=1; AJvYcCWaMdN0TF9BO4Ez+53i4YwfZdfLFOlXBNPTGLuGiDeP8TpkvhdZjXI4ExvcGMWbun0VysGLamxEzWFNiYaIb4pCJieNPyIlkaO1dcfVsKjG4+Gyrumgwegx6jZAysUMhV3uylo/pVBPNzOocD7eYkQrQy66YS5vjWI=
X-Gm-Message-State: AOJu0Yx6qDsepFYqltDJ0eEw4FAnT5gxbrgFlQNnT+hesulydc39OfjJ
	WT9FCA6rwumrZKqagprFm+vyoCG5sX8Zgm1GPetFkU1yFB5ymQ82
X-Google-Smtp-Source: AGHT+IGuxDdFAgdWqgiP/kZrg0iwxBJMVyTH3b8zZKvOQHHripPZ4bEWsXUOLcu/oJJn63EYCqpTKg==
X-Received: by 2002:a17:903:2443:b0:1f9:cbe1:ae9 with SMTP id d9443c01a7336-1f9cbe10dc6mr23294315ad.44.1718905119620;
        Thu, 20 Jun 2024 10:38:39 -0700 (PDT)
Received: from localhost.localdomain ([221.220.128.96])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f855e55ca1sm140132045ad.49.2024.06.20.10.38.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 10:38:39 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: nicolas.dufresne@collabora.com
Cc: andy.yan@rock-chips.com,
	benjamin.gaignard@collabora.com,
	boris.brezillon@collabora.com,
	conor+dt@kernel.org,
	daniel.almeida@collabora.com,
	detlev.casanova@collabora.com,
	devicetree@vger.kernel.org,
	didi.debian@cknow.org,
	dsimic@manjaro.org,
	ezequiel@vanguardiasur.com.ar,
	gregkh@linuxfoundation.org,
	heiko@sntech.de,
	hverkuil-cisco@xs4all.nl,
	jonas@kwiboo.se,
	knaerzche@gmail.com,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	liujianfeng1994@gmail.com,
	mchehab@kernel.org,
	paul.kocialkowski@bootlin.com,
	robh@kernel.org,
	sebastian.reichel@collabora.com
Subject: Re: [PATCH v2 2/4] media: rockchip: Introduce the rkvdec2 driver
Date: Fri, 21 Jun 2024 01:38:30 +0800
Message-Id: <20240620173830.277022-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <2349746d488f4edf9c7c40df5e15ff70d3ec67b7.camel@collabora.com>
References: <2349746d488f4edf9c7c40df5e15ff70d3ec67b7.camel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_103840_651254_BD4E1EC3 
X-CRM114-Status: GOOD (  17.88  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Detlev,

On Thu, 20 Jun 2024 10:07:41 -0400, Detlev Casanova wrote:

>This feels like hacking the driver to please a specific userspace application, 
>so I'd like to understand better what chromium is doing.

Yes that hack is ugly. I have added log print in chromium to see if they
have set frame_mbs_only_flag to zero and found nothing. This sps->flags is
initialized 0 by kernel's v4l2 code. I printed all sps values in function
rkvdec2_h264_validate_sps and they are all initial values when chromiumn
call VIDIOC_STREAMON at the first time.

Hi Nicolas,

On Thu, 20 Jun 2024 11:03:54 -0400, Nicolas Dufresne wrote:

>This falls short of a specification to support the uninitialized usage by
>Chromium. That being said, we do make an effort to try and have a valid default
>SPS control and OUTPUT format combination. So my suggestion would be to set
>V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY in the default compound control init. This
>way, 0x0 get translate to 16x16 instead of 16x32, thus will work with more
>drivers.

Yeah that's the root cause. Vaule of sps->flags is initialized to 0 along
with pic_width_in_mbs_minus1 and pic_height_in_map_units_minus1, so this
check would fall with minimal decoder size 16x16.

>Chromium these days is not being tested on anything else then MTK, which has a
>64x64 minimum size, this is why they never get into this issue. This driver
>validation is entirely correct. Removing in some cases is unsafe, it would need
>to be replaced with STREAMON only validation of the CAPTURE sizes (which
>currently is validate by implied propagation of valid SPS/OUTPUT).
>
>**not even compiled tested, just to illustrate**
>
>diff --git a/drivers/media/v4l2-core/v4l2-ctrls-core.c b/drivers/media/v4l2-
>core/v4l2-ctrls-core.c
>index c4d995f32191..a55e165ea9c3 100644
>--- a/drivers/media/v4l2-core/v4l2-ctrls-core.c
>+++ b/drivers/media/v4l2-core/v4l2-ctrls-core.c
>@@ -111,6 +111,7 @@ static void std_init_compound(const struct v4l2_ctrl *ctrl,
>u32 idx,
>        struct v4l2_ctrl_vp9_frame *p_vp9_frame;
>        struct v4l2_ctrl_fwht_params *p_fwht_params;
>        struct v4l2_ctrl_h264_scaling_matrix *p_h264_scaling_matrix;
>+       struct v4l2_ctrl_h264_sps *p_h264_sps;
>        struct v4l2_ctrl_av1_sequence *p_av1_sequence;
>        void *p = ptr.p + idx * ctrl->elem_size;
> 
>@@ -179,6 +180,18 @@ static void std_init_compound(const struct v4l2_ctrl *ctrl,
>u32 idx,
>                 */
>                memset(p_h264_scaling_matrix, 16,
>sizeof(*p_h264_scaling_matrix));
>                break;
>+       case V4L2_CTRL_TYPE_H264_SPS:
>+               p_h264_sps = p;
>+               /*
>+                * Without V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY,
>+                * frame_mbs_only_flag set to 0 will translate to a miniumum
>+                * height of 32 (see H.264 specification 7-8). Some driver may
>+                * have a minimum size lower then 32, which would fail
>+                * validation with the SPS value. Set this flag, so that there
>+                * is now doubling in the height, allowing a valid default.
>+                */
>+               p_h264_sps->flags = V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY;
>+               break;
>        }
> }
>
>Nicolas

This patch makes sense and I just confirmed that it works with chromium.
Thank you very much!

Best regards,
Jianfeng

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
