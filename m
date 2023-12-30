Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F31C6C46CD2
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Dec 2023 09:52:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5RNo2aC6SShdrVNr/tF1gE+0ftCv/CilE3svViX9j74=; b=AMBMAkxoUUIXiZ
	TNbmH7ILwkt1CmDE4yl2FM1tGuQWy7AIkKDenGRSNBBoUYGdc5zx1+ZN3h0m5X0sjX6QfAYSc8CVP
	3j+cugrI3BjfbPO6ZaQpiCLQ6FlfvyGPpvbAUq46boP2Imlyx0Og4OhQ08Tl+CwNj1lOj1bI6RVse
	1M19zqIEjpuMQytRbNkupQ7flTc44rnaUD4reXsLo1bLxSHSx9yK54bmfYhjaZKZKOPz7Hk6l5hA8
	RK5vGiZrLVXp+qlpqBK0BpoHGQE3dwvmT4tnjY8H5j2Up9J3U69YAJHOCvWVrLHgemIo6Ng2aVRwU
	OKfwhbTBAHQ+MMRuVSTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJW1N-002UXA-1A;
	Sat, 30 Dec 2023 09:52:45 +0000
Received: from mail-oo1-xc34.google.com ([2607:f8b0:4864:20::c34])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJW1K-002UWG-0j;
	Sat, 30 Dec 2023 09:52:43 +0000
Received: by mail-oo1-xc34.google.com with SMTP id 006d021491bc7-5947cf2a4f6so3254221eaf.2;
        Sat, 30 Dec 2023 01:52:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703929960; x=1704534760; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f2ug4vrrJxLoeI9/pb4M3tzSvC+dUh/AitXDBaOV7p4=;
        b=VbdyJskdvPXNlQJ3othWduVLJrCGdpkq7kGmrXQrVU6+G+zsilvXXQGY4i23R90jPv
         hh/dxdTY/1JdTUTrzk/DJ/ZDmuK1CtzV8DISeNITfk0ipiy9y0vg7cqjqvFUNipaKnjo
         NQrfar/FBSALWg85rIc+kEZj7mDoU9/FfFYb/PRhYTT/g4oKvoC/WVCJ82tSyUA+mU/a
         /nhajxYF3QlzsdKIJhK22qyhfYF1Oeuz7n3np/e9A7PSPan8XMgT4aiO12dsQstNYf8d
         0VCsvOxuQNuePNQ0gxpEGoWUZLo8A9Dc98vCZjYMPZZFjQheOhQmv2psf3vu6Vq4zEzm
         m8YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703929960; x=1704534760;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f2ug4vrrJxLoeI9/pb4M3tzSvC+dUh/AitXDBaOV7p4=;
        b=wgjpZsVgiisEcDjkSDrx1VRYNL6FRy4WMA4hYYPWNM7Z/L/YF+sx4dlNaK50V4Ik6Q
         Dc4ukvPtccZpCifK7rk3Cd5fMoKHtWEoJcc7vRDB5y8agwLI0LkCIbg/2fK3vCEzJPOV
         r4eGV7FfDLGLRkw/Zx7Xs72e17pMNLHVyBb69E5pUAKB98yZXHcwHZH98VKayrSji5N7
         FJywfN8Ls5NKYd7RhfKY8JfHr0Im5I7ZW1d8AKB0fdsIYIhVnP/jyV+72Gr2EZPvlYUA
         LUWltd7a/8sKzF7KZBakAfDNI/J8SOT7ElG/9LInfcoyeKieb4fEGsWL+zjxl1dNfpTa
         W9zA==
X-Gm-Message-State: AOJu0YziQlgToYslJgd9gVTxxj7eG6+dP089EBC7vPLjDCbCLOcOU2De
	GQQ2zZCJa7thx6x8C+hJJiQ=
X-Google-Smtp-Source: AGHT+IE4ydwPSSJsdouK6gFidOvqGq0hFHDyDo7Z8qjafOwU9NYVnsO6so+ScA/jFOskXKE46w/iIg==
X-Received: by 2002:a05:6358:cc1d:b0:170:c991:d419 with SMTP id gx29-20020a056358cc1d00b00170c991d419mr13188168rwb.48.1703929959838;
        Sat, 30 Dec 2023 01:52:39 -0800 (PST)
Received: from localhost.localdomain ([2408:8207:2540:8c00:23b7:4d83:3222:c5dd])
        by smtp.gmail.com with ESMTPSA id m20-20020a170902c45400b001d316770044sm17170905plm.56.2023.12.30.01.52.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Dec 2023 01:52:39 -0800 (PST)
From: amazingfate <liujianfeng1994@gmail.com>
To: sigmaris@gmail.com
Cc: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	sfr@canb.auug.org.au,
	liujianfeng1994@gmail.com,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/3] Add hantro g1 video decoder support for RK3588
Date: Sat, 30 Dec 2023 17:52:28 +0800
Message-Id: <20231230095228.3739806-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <CAAXNxMT3f68-ptM7Crhrfmn7iwTyJc9pwz4Beob+5beVODaSHQ@mail.gmail.com>
References: <CAAXNxMT3f68-ptM7Crhrfmn7iwTyJc9pwz4Beob+5beVODaSHQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231230_015242_283225_36D0ADDE 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
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

Thanks for your test with fluster. I also tested on my rock-5b(rk3588)
and orangepi-3b(rk3566) which are sharing the same hantro g1 ip. I am
running on ubuntu jammy so I'm using gstreamer 1.20.1

rk3566 and rk3588 are sharing the same results:
JVT-AVC_V1 test suite with decoder GStreamer-H.264-V4L2SL-Gst1.0:
  Ran 112/135 tests successfully.
JVT-FR_EXT test suite with decoder GStreamer-H.264-V4L2SL-Gst1.0:
  Ran 27/69 tests successfully.
VP8-TEST-VECTORS test suite with decoder GStreamer-VP8-V4L2SL-Gst1.0:
  Ran 59/61 tests successfully.

H264 decoder test has less test case passing. I think that's because
of my low gstreamer version. If you have a rk356x board I guess you
will get the same result as rk3588. That should be the mainline support
status of hantro g1 decoder.

For ffmpeg at the moment fluster doesn't support v4l2-request decoder.
I tried Kwiboo's fork[1] but failed to pass tests with decoder
FFmpeg-H.264-V4L2-request. I can decode video with ffmpeg command like:
"ffmpeg -benchmark -hwaccel drm -hwaccel_output_format drm_prime -i Big_Buck_Bunny_1080_10s_30MB.mp4 -f null -"

[1] https://github.com/Kwiboo/fluster/tree/v4l2-request

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
