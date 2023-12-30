Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8101DC46CD2
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Dec 2023 15:32:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PjfwHLstz2jTFmITlxMP3vdHAMCAoTi2s8+Dmu0+YjY=; b=Kz71yNcr8J7U1p
	seGMGEGnMjEdGuZfUvUw1KcJGRc9RZiezul/sT5mOd2qkQZbn0epOjaqlzHIJU4Rw2AWkZ1XX4cVj
	ibSIeDcqwXV8tpxFaUrkiA/Ez3s2xdqoH+UwrwiU8IQxYSmOK0nfferBoznhtJNB70o78iZxq9DOe
	5Tm05QPZn0oF8jcHN2hWk98D/W6LEk6EZ/Wz6gtwtSaQKbY6kJefAm7ldxJW57TBXbKFyTp3fuO/1
	CAvZpwjjYT6jHA1a7XnciuQNO0NClzJOIlVmW2VnASkHX9m3Ocx4HjiMPs1wx80X39nEntjM/OZct
	Opr1i1zr0YDwqKwgzt1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJbJw-002ykR-1O;
	Sat, 30 Dec 2023 15:32:16 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJbJt-002yjs-0B;
	Sat, 30 Dec 2023 15:32:14 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-1d4a980fdedso3308815ad.1;
        Sat, 30 Dec 2023 07:32:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703950331; x=1704555131; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0aQnswRfvf4BwrZOcbpjhGTjzzT98U1IdJ18XjrAJzU=;
        b=ElHiJid3JL9n91Xy9L6WO519avrZ370bCVhO+Ps/PRzh6rU6l+CbU79yzHaeNweAdv
         67UFgphZjVte16UkZaV8+7yX/xxj3f02TYz9yB35TGZ6WtSx/+XQKnhfmW7ufv7+hleA
         ovBOZ9yh9lnyH4VK2PkHMwYWDioznssEq339k1bYy5e412i7C3jAAEuO1mOM5vGuwhyw
         PzxKTQ+HmdEPzkKKvE/l2L6fi0uYcv+4n5nrOMnQyYIHujGYtQuDiw9M1SUHorjndS+r
         GDUvONctbixgXAoIDUd6LeLSEeDIyuRPkaeuYxBb6wOLx3xficm1TD0zsuEzrptUEnio
         Vhpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703950331; x=1704555131;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0aQnswRfvf4BwrZOcbpjhGTjzzT98U1IdJ18XjrAJzU=;
        b=UZFMzRILIf2TuQUEdVwcvtIma4TlZjPApNJJxXaGbyCes1XTyMTiEL4IHdQWyGcLya
         9cwScNf+/rzBvjAMkYY3ajiE6mOfxIOIiY9gi7EJ+fNqtghx8XZ25wQK2+uuz3e0qjbR
         ycC6iWdZ3KVH65T9F7WLOHT8G0zbuxqh1TEYpSKgcZAsd6bIuJFAIs0C7alzsMeInEiP
         N5XJnyCIjbC/cV7aAcLf8Ku9TfMyj3bqwlkV81u6qEZSgLhXHNNHX09q2clKNS4haDDT
         yNLpx+FBvsCHhJqPsswLCOHCVrysBsTsVnOnjK9lfsQdN9R4ZojBYTJlQtgddtKQfz1a
         nwMg==
X-Gm-Message-State: AOJu0Yx9EF1dPlPnvvUdyoxgaSPZB80fSJJ50VpliQg4hae9QlbU/T0a
	WgkNGKP6oeDdS8U6HfHdh1U=
X-Google-Smtp-Source: AGHT+IHhWDBSzfIZA4m7vsfoPPCYdAoRPfC1FFKRZhMnHzCX2ZKiEcTFknXXcIQJBqto4e5O5sW/Hg==
X-Received: by 2002:a17:902:7590:b0:1d4:1bcd:6bae with SMTP id j16-20020a170902759000b001d41bcd6baemr13040572pll.31.1703950331583;
        Sat, 30 Dec 2023 07:32:11 -0800 (PST)
Received: from localhost.localdomain ([2408:8207:2540:8c00:9802:680d:e03a:17cd])
        by smtp.gmail.com with ESMTPSA id 5-20020a170902ee4500b001d3c27e00f2sm17471750plo.284.2023.12.30.07.32.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Dec 2023 07:32:11 -0800 (PST)
From: amazingfate <liujianfeng1994@gmail.com>
To: jonas@kwiboo.se
Subject: Re: [PATCH v2 0/3] Add hantro g1 video decoder support for RK3588
Date: Sat, 30 Dec 2023 23:31:59 +0800
Message-Id: <20231230153159.3748580-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <97faf49b-0109-439a-accf-251b502ad40b@kwiboo.se>
References: <97faf49b-0109-439a-accf-251b502ad40b@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231230_073213_094961_B499B5E8 
X-CRM114-Status: UNSURE (   8.46  )
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
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, heiko@sntech.de, sfr@canb.auug.org.au, liujianfeng1994@gmail.com, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, robh+dt@kernel.org, ezequiel@vanguardiasur.com.ar, krzysztof.kozlowski+dt@linaro.org, p.zabel@pengutronix.de, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Jonas,

On Sat, 30 Dec 2023 12:49:38 +0100, Jonas Karlman <jonas@kwiboo.se> wrote:
>I have only tested this fork of fluster with ffmpeg 6.x, what version of
>ffmpeg did you test with? I was expecting it to also work on ffmpeg 5.x.

I am using ffmpeg 6.0 with v4l2-request patches from libreelec[1].
Ffmpeg v4l2 decoder in fluster fork is using ffmpeg args:
"-hwaccel_device /dev/dri/renderD128"
which make the test fall with hantro g1 on rk3588. After removing it I
can run tests by ffmpeg v4l2-request decoder. 

Rk3566 and rk3588 are sharing the same results:
JVT-AVC_V1 test suite with decoder FFmpeg-H.264-V4L2-request:
 Ran 127/135 tests successfully.
JVT-FR_EXT test suite with decoder FFmpeg-H.264-V4L2-request:
 Ran 44/69 tests successfully.
VP8-TEST-VECTORS test suite with decoder FFmpeg-VP8-V4L2-request:
 Ran 59/61 tests successfully.

[1] https://github.com/LibreELEC/LibreELEC.tv/blob/master/packages/multimedia/ffmpeg/patches/v4l2-request/ffmpeg-001-v4l2-request.patch

Regards,
Jianfeng

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
