Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6956C27C53
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jun 2024 07:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XbtRseP+7Fhi+NGugjCNd49ClJ+Oagm4wx/vAo/dnsU=; b=XRb0HxdyOsA+sb
	+5tTS2Zibl4Q7sayN+TONk0qzyAzZSYDzCJalk7njC/kWT2YBxhLtpAPpFoFYkqrfs5CuimqtFMGG
	y9f1arr0yrBFoXbZYPHyTYOlzaAwmp6CMmz/pH46FFdmsf1i5NfEtPEfS3TfK6g+doRQpfEMg/vGB
	JFqcOfCBte0EtFYDlauJMJDcADPMDNmtlH2GZkhWBlSI0+KMU1ppol5grtjspKAf/Qd+tP91mh63f
	yBtEfHSbyaOAel7ZgBNy94Dz7mtw9cPBAg0Retez6xmrH55GOntYEyFiS+rr2j1lh5AxgDUlWPw75
	0Tf0bDcT3puh4sLcxWPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJpxC-00000000F3z-3wKP;
	Wed, 19 Jun 2024 07:42:02 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJpx9-00000000F39-0Fh7;
	Wed, 19 Jun 2024 07:42:00 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-70633f0812dso267560b3a.0;
        Wed, 19 Jun 2024 00:41:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718782918; x=1719387718; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EYf14K0o/GtP+Ak9bfKmmPfeyfY6du+2C660F2DlOvU=;
        b=msiNhHQdOB9z2J/F7hKSTPqEvix3LQ+FTeyGf5JeHverbkA6hLDb6pMz4LlVoDji2Q
         T4QsWyyDCqBCPnhAc07d1Bk8stYrEHRTT09TmxzRNPX0TuFSeBTtcJIu1YvX/rHLbJc1
         RdggE1KiFgCWkJ01SQKjJESljYeiWm94HXX0JWzyI0RudNBB0/jm03RVSHcA/6xA9xu4
         2oDGh0m9FQMisrJIAKONylkpn/bQIwSTvneuNy1TM0zlyVdsWuoq/YYJeGeHsNS17whW
         G78KKVESJK0lXjtlwspzxQTXaWR9hwB5NbnNYEw3Rc175Nu+saqWj4ewIhpmzx+/3WWQ
         brYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718782918; x=1719387718;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EYf14K0o/GtP+Ak9bfKmmPfeyfY6du+2C660F2DlOvU=;
        b=oLEfyMg6wLL7ke3dUj4qUCzgo0RGd84P1dqe+EcFMZTorjNCeXYo0f4akfSdhgu8Oq
         /hTa090pCVrE/9wscD21UgasWrszAlMy/VYScuxe+6j3kVb8BLm2IPA0Kj49qJ7vj2Po
         td86/8Rv7zw0wMeabfOFo07+6ngLIRXwwLJV8ldn06SBiKHnV/RZRkkJliHcXy9knY1i
         bbBxI0L6IY74SpUNk8JF/697aqzZusB2QFXVCrDNqxQdRWhu//q3+n3qa8eW8kg3qXZH
         eRGuRe/GnZCmIT67Uod7EBt8ZF+yv8JxnI8X90V1HFhrWPuxOA2i2oiHOvJKcJuaeOx9
         Pgyw==
X-Forwarded-Encrypted: i=1; AJvYcCWD2yQO+a9LswS6zMEsc7z3qDnHvXZ8dF2SQ8BY0vp5SwdnV5UPpyn/Wbtyb4a0GoZoNLOjeeT5wRGunZhLISzoSpMUoUg9VhF1ZJ3EGjOKsVv9Gj0KW77+1H1PqSKYJr8z/qd42QVcgaR/pPiR3GGd9WhqqEfLaTg=
X-Gm-Message-State: AOJu0YyJxsr74r+VQ59PI4SFVI+PlNkR5p7/h8Eok65GhA/6pyx4TWQW
	TJWk4gqBvI4Yb8CHjr1yt6TWfZczXwQ1rbwFuYeuU8gWJ9evein9
X-Google-Smtp-Source: AGHT+IH+9mFlVOWUGxjHQVXw4qG3V8AeXjQgSMD+qpxAz0/Fx43VORUI8LtUbjV7U3DwdOEy2ZllCQ==
X-Received: by 2002:a05:6a21:610:b0:1b0:58e:1b93 with SMTP id adf61e73a8af0-1bcbb3826camr1797590637.1.1718782917869;
        Wed, 19 Jun 2024 00:41:57 -0700 (PDT)
Received: from localhost.localdomain ([221.220.133.99])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f855effc9fsm109835865ad.189.2024.06.19.00.41.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jun 2024 00:41:57 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: nicolas@ndufresne.ca
Cc: alchark@gmail.com,
	andy.yan@rock-chips.com,
	conor+dt@kernel.org,
	cristian.ciocaltea@collabora.com,
	detlev.casanova@collabora.com,
	devicetree@vger.kernel.org,
	didi.debian@cknow.org,
	dsimic@manjaro.org,
	gregkh@linuxfoundation.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	liujianfeng1994@gmail.com,
	mchehab@kernel.org,
	robh@kernel.org,
	sebastian.reichel@collabora.com
Subject: Re: [PATCH 1/3] media: rockchip: Introduce the rkvdec2 driver
Date: Wed, 19 Jun 2024 15:41:50 +0800
Message-Id: <20240619074150.103770-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <0e8561108c4fc99291ad7cdc0c6af2dbb8e58f02.camel@ndufresne.ca>
References: <0e8561108c4fc99291ad7cdc0c6af2dbb8e58f02.camel@ndufresne.ca>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_004159_122823_D6782C77 
X-CRM114-Status: GOOD (  16.96  )
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

Hi,

On Tue, 18 Jun 2024 08:39:07 -0400, Detlev Casanova wrote:
>> I think the min/max width/height are incorrect. From rockchip's TRM V1.0
>> Part1 page 374, supported image size is 64x64 to 65472x65472.
>
>Page 374 shows the sizes for h265. h264 is the next table, where 16x16 and 
>65520x65520 is documented.
>
>> And my
>> chromium can't use rkvdec2 because min width/height are set to 16, which
>> 
>> will cause error at here in rkvdec2_h264_validate_sps:
>> >+	if (width > ctx->coded_fmt.fmt.pix_mp.width ||
>> >+	    height > ctx->coded_fmt.fmt.pix_mp.height)
>> >+		return -EINVAL;
>> 
>> width is 16, height is 32 while ctx->coded_fmt.fmt.pix_mp.width and
>> ctx->coded_fmt.fmt.pix_mp.height are both 16.
>
>Maybe
>
>if (!(sps->flags & V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY))
>	height *= 2;
>
>is causing issues in this case, I can check.

You are right. H264 decoder should support 16x16 to 65520x65520. After 
removeing the "height *= 2" code chromium can also decode video now.
Checking with V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY is copied from rkvdec and
rkvdec has min width/height 48x48 so there is no issue with chromium.
Chromium will call VIDIOC_STREAMON with size 16x16 and without sps flag
V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY at the beginning of the video play.
Gstreamer doesn't has this issue because it will call VIDIOC_STREAMON
with the actual video size like 1920x1080.

On Tue, 18 Jun 2024 12:34:07 -0400, Nicolas Dufresne worte:
>Just a theory, but 64x64 looks like Mali GPU requirement to me. Can you give
>more details how it fails exactly ?

Chromium failed when calling v4l2 uapi VIDIOC_STREAMON with size 16x16 and
V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY disabled. It has not come to render step
which will use gpu. Other decoders I have tested with chromium like
hantro g1 and rkvdec both don't have this 16x16 min width/height.

I also tried gstreamer with a 16x16 video and it works fine. So there
should be something wrong in chromium's code. But I have not find where
chromium set sps flags in its v4l2 decoder.

Best regards,
Jianfeng

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
