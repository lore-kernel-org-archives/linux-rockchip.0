Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2FA1C61DBE
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Aug 2026 12:46:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tpb3jplVDBsDlBWi/PpyErloBi1+nsZ0B7wXj/OeDxE=; b=Ds6hxdrRPV1Pex
	Fc6nVihWujowTo7SuqtTqczUTWTFTBSFtx48kRA5GQ6a6nBEl8+T3LmUNCoQzN0JOg60+XK9yQ616
	pRxAaLsp7wdwoy63PErMcWM/OIpMANLV9lDzwsIBiLUEga7416aqFg1TSo5YhfKHqkQQH9+SfxJoP
	g8c1Pc5ASr5mceACJ54Y+jr4ji6sSh9rwCH7wD5/Kir6OVkb4XScuZeKdyzm6xnYxxvpAxGKEKz8H
	5j5YgIkT6XysOHdD+PZy47DPK5H2C0ccYZJ94lkMrti31P24e01nT1nnXn+qeRokHJ13ZD1Z+k1rE
	2WD5bid6uYethK1XwHcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyqXX-00000000o8G-1tMI;
	Tue, 25 Aug 2026 12:46:07 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyqXU-00000000o6Q-17tT
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Aug 2026 12:46:05 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-c15df0c154dso45691166b.1
        for <linux-rockchip@lists.infradead.org>; Tue, 25 Aug 2026 05:46:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787661962; x=1788266762; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ZAN0remZKwTzPxuAENpiQH5fEVpl+tgiLHbVt5de6NI=;
        b=ZKRXPn19fZUZ1sN2PfBYTkBpZU/iPyWUAbCSzWBW4JT5vL2SE4cS7T/AFVsO2h3CgN
         WSRgX2rkF5ARtAXpphy8rvvzIvX/iXjHEJDcYsPXZKtsN3PAcGTqNIx1fS2BXQdivGYr
         ZGaCJdBzEDjytVM1TQ0AnH6LgR6BU9rQgs+n8i2GP8ANeZb+1jz28KOfze2Wo9KbuCnv
         OC8VChg0Wh4YExasRdWE26ntBNM/XBha1HfL/RyYxAdfE2AKHXUb+nFrWjZWibuz67+v
         Wt8py+69N3W0P0rA+sVdBnMIgYkJhaSw6mBdcd3xFvprm4RCbQ1FSVN3mh3WGwXMkP93
         1kcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787661962; x=1788266762;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=ZAN0remZKwTzPxuAENpiQH5fEVpl+tgiLHbVt5de6NI=;
        b=TCTtDUAzGBDk7SbxLD5TGUlrh2wjZMBBPPvvD3aEkfXw+0r7LCffbrO4hCaNLT4e3V
         eNTGj/j35v9RAxrBWLi2uxJNNPqB69v3VF6coesfzwDBHk1ITv7SCj1o7kyoJ/8/NqiK
         9ybNU97jtN2DanqMu1Cm7qwTzHJ9rot/TE4Q4AYc/UlKSrO7GsPseAXI1mUBgZQH3izs
         JbAVkyU4yjWFfYwy4HMWhrapu8y2gDg1yTKR8GgGGHMCV2IB3KaSKg5YmtHpPWr+TFH4
         Yz4FcpTfv607AG5lJiK3MmU8fuv9TOfDxpu47A7mV5Z5xpGRfX3RSaT2/yqeYwcWm0JU
         1KDg==
X-Forwarded-Encrypted: i=1; AHgh+Rp9iiVzwD2E3PE5v3L5Anacj9qSqT3UbzChRF73M3As62BmXem/xmkNArwVTt5yEE4ovCmWyVJzmJSoHD/hrQ==@lists.infradead.org
X-Gm-Message-State: AFuF++mYU1WJrQNHByg9EBMpOIUvBHxAHvDFZKhH4psh9nswBda5LonB
	g45VD4PE6KGt1PxLBPSZNPN6ucMLenwYZkLe6BK5oYgm7KAnANouWBnO
X-Gm-Gg: AR+sD13yL8Mo9/LLokAwC4p1nOGeJeyJtOrUmuGpGVBIAQ0DPjP16bvt1zRJghyiKO4
	/hsbYDfv8A+5g6GN7q36TI8Rfh0Et3z6vAWd8lpe5xlCq9/yXw1KhEZxkXlt8uNSBjlQiEcY6sa
	7W4k9Xw6uKS2xQ97fmy2ybKZ75JVZujPCoFqzK4yd5/n64YCwPBoiC1iYXhi+dKY9/GXIauYClq
	hakA3OP3wIc3gg82IJ89UCNi0ktNSlaZ658oQ365kgJgaos8Jte+0sxQsx+xVzeqWQC9d/Qla+G
	TMb6h/Py/WaCb70pe1hOJ3YlromaIs4BrEWE5bJNKx3V0DluQXfg7opIggeP0inSp4DI0CKkTRu
	VvyHvd2GzhrPeLFBU2qtgFw4x/xAMx9EhfLGUYkEGFZKVWSe7fMP9qA2aQh9sa2/3VmseuDRBt9
	8l5RyjQ9ig6Qow1ozh/8vCTw8SD1r2cpHK/RY7LOt3rjUZupStTM/NQ4KI8jZkeCoGW2mhSeoxj
	QJN3JQzyMsHLCi0N+ggt2Q/GXlDKW2gUgno
X-Received: by 2002:a17:907:d0e:b0:c20:c5f4:e19f with SMTP id a640c23a62f3a-c246a65fe29mr2143386466b.4.1787661962050;
        Tue, 25 Aug 2026 05:46:02 -0700 (PDT)
Received: from OrangePi5-Plus (178-223-53-162.dynamic.isp.telekom.rs. [178.223.53.162])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c249629929dsm1824340566b.23.2026.08.25.05.45.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Aug 2026 05:46:00 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Jiaxing Hu <gahing@gahingwoo.com>,
	Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Alexey Charkov <alchark@flipper.net>,
	Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	iommu@lists.linux.dev,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v9 03/13] accel/rocket: let the core suspend after a reset
Date: Tue, 25 Aug 2026 14:45:42 +0200
Message-ID: <20260825124544.11766-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <CAEWPSH5MVzoQMaFOEQ93+1pOPmcXCDNfuXsv5j-X8Lb1fy_hrg@mail.gmail.com>
References: <cover.1787568658.git.gahing@gahingwoo.com> <b5265e47492897d0ada844c2ff7f477bb715cd07.1787568944.git.gahing@gahingwoo.com> <CAEWPSH5MVzoQMaFOEQ93+1pOPmcXCDNfuXsv5j-X8Lb1fy_hrg@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_054604_320027_B9C96AF8 
X-CRM114-Status: UNSURE (   6.48  )
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

My mail client wrapped the tag comment in the previous mail, which
would truncate the disclosure when the trailer is collected. Here it
is again, on one line:

Tested-by: Igor Paunovic <royalnet026@gmail.com> # RK3588, three cores, induced reset, JOB_TIMEOUT_MS=2

Sorry for the noise.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
