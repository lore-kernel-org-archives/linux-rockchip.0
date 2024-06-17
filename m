Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24331C27C79
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 15:21:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eiZguCd063fWgs4r04fNgm20/QgUHUEGeLh4SZuglFU=; b=SVVV+ArBeKvolt
	d6ZKcBeLfIyAYlNjRdBwLIKAqz3pqQhBka4JI6yPz4VhzzWr+MdqNXiw3uLvoNRQpN+Pfd6HnO5lI
	cMQeX1gIyS8UMq/jK9agR8chFi13UtqxhBlJTfusiw9G7WDbudY3prcR3c7hdMCewCqH36no+lA/q
	SttEnqtjlmsTDekqZpgaNLw3uUl0ySrjyEN5WkLBIuLy65J5+F5/VwCOnSEv0Ck3jBdBP1LxzUQmg
	jAOWZmg5mmtiE06BJHbOuQ0R1edIMLLYkFmXUAKZ+YXeXTG/4lPU0ExIrnR84ZqduO4UWC3+qBVPs
	amNToRHg4hA7dsQq3lWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJEAs-0000000BQTF-2MGi;
	Mon, 17 Jun 2024 15:21:38 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJEAo-0000000BQRa-06Fl;
	Mon, 17 Jun 2024 15:21:35 +0000
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-7046e87e9afso3494285b3a.0;
        Mon, 17 Jun 2024 08:21:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718637693; x=1719242493; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=00MR3ut2aMx7bMI2LS9yReBsbwXpambIHWaVlb3riis=;
        b=VeMl7kIoLMuaUKVHY7a1eSQpuUpPDuhHEEW2ov+mSWamCZeVx0umU9wZhxevxNPaTa
         i/BPqKzuHaRZ1YbpEzKg03aO9UyvFu5jm0PpdWNDyRHvYQyMS995+kgwgYuEGsK/mF17
         Ti2VtNybtofX/0EXz7FQ4KczOE93YhtGtlFx8rpTNtGkhs+Gi/dtadFxYTiugpKxaP94
         fKuj/C35LbgwIv6h7u3SwfR7Un6ROXHgmsinr/VwIvv9rkUCV0Ii1hBzbOIh3UuKESyO
         MKtS8F0p16kqA7ajgNgYMIiDHC8Vnnao6/xCFOTo1tI3RHWvViKAV03CPTkREv6yuCFR
         fnhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718637693; x=1719242493;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=00MR3ut2aMx7bMI2LS9yReBsbwXpambIHWaVlb3riis=;
        b=F++s4zwONGDWbgxC2Ht6X25yl8x9Bfq7Azf2nN+JZkc+qbtecBzW2Iqs2+pZaWEegW
         frogLWfta9iZ9546aJFjPeqB9682PNCKwRbhJ4Pr4NdMVI0Aqt1XKqpElBrRfAGri4VQ
         2VrXhTUedWufUKX8iwWmjjrRQTGxH/dpGrGyafKcOg4uNIGqOVjmtlF/HDTYiyymOUZv
         F2J8ri55+No5vip7eG1LDx0j8jpzxkpTGlOH5YE/lpIDY4nO2uyTO/OAQoHkEzJfafiX
         3OBbI5YpUzHxhPiEWAknfwLQxQKmsAyNGmsdjID8iFgrQNbUfcx3I5MXSrGr5APg8yMx
         +tXQ==
X-Forwarded-Encrypted: i=1; AJvYcCVaxnab2RnaFbV+aveDsHOgOmFyWy6L8IsPbQEPusWmm+czCQ4EXZsJMPhLzKoLlF8W2b9roH39Lz/Vu7EMl+aTYoKvb0P9bjqdY7qQdRpk+napWp+lLp8qufEKNKUx2f+tOLxv0NGoewB8WQonKhQTlPc1wSUZNW4=
X-Gm-Message-State: AOJu0YyiV3/4Ycyk4Dxo+y/NUXjxdfAfZujbJL0/MSy1y4Q1+ludCMQM
	AmbzlHFB4WI+IRe12VMgoid+/FGNB5mpwxAhlA3IxNsYF3CEhQGO
X-Google-Smtp-Source: AGHT+IHBHAhCvnxr/UkOTrgt6uZtW2TW6zVduT+0n5X0O7AEH43lwuvAseCDAnFPI71RKlft3Z+Kkw==
X-Received: by 2002:a05:6a20:3c91:b0:1b6:5b3a:9a55 with SMTP id adf61e73a8af0-1bae7eb2d92mr9897841637.14.1718637692784;
        Mon, 17 Jun 2024 08:21:32 -0700 (PDT)
Received: from localhost.localdomain ([221.220.133.99])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-70a36b6954dsm1760558a12.84.2024.06.17.08.21.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 08:21:32 -0700 (PDT)
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
Date: Mon, 17 Jun 2024 23:21:18 +0800
Message-Id: <20240617152118.30684-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <f295f41ef1c9ee920ac3ac8e70ccf672ba7c9648.camel@ndufresne.ca>
References: <f295f41ef1c9ee920ac3ac8e70ccf672ba7c9648.camel@ndufresne.ca>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_082134_088593_4E26B923 
X-CRM114-Status: GOOD (  10.64  )
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

Hi Nicolas,

On Mon, 17 Jun 2024 10:04:59 -0400, Nicolas Dufresne wrote:
>> [5799:5886:0617/171224.851218:VERBOSE1:v4l2_device.cc(128)] Open(): No devices supporting H264 for type: 0
>> [5799:5886:0617/171224.851346:VERBOSE4:v4l2_queue.cc(1069)] This queue does  support requests.: No such file or directory (2)
>
>This one indicates that V4L2_BUF_CAP_SUPPORTS_REQUESTS might be missing in the
>REQBUFS implementation. I suspect GStreamer simply assumes this today for driver
>exposing stateless formats (which is fair, its not a compliance test, and we
>don't have a codec compliance yet).
>
>I'd suggest to check and fix this one, and retry, might only be noise, might be
>the main cause, we cannot tell.

This log doesn't harm chromium decoding. I can also see it when using
hantro g1 decoder. The issue is "VIDIOC_STREAMON failed" later causing 
decode failed.

>Are you using minigbm ? Because if you do, we don't have minigbm code for this
>driver (and have no plan to do so, since we don't aim for ChromeOS support).

I'm using patched chromium which can use mesa's libgbm to render NV12.
Robert Mader has showed me patches from this mesa's merge request[1].

[1] https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/23214

Best regards,
Jianfeng

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
