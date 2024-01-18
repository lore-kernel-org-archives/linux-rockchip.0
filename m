Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C412C4707B
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jan 2024 08:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c4BhEZRxNieUkgPepV45kEvQUAqwUTMHlEf20HLEyT4=; b=sjzp3hNwaTs9qD
	NMx6al7xCU5N3LV9dyL/0cFzKBWlguuj155EbOFex90XHeFq0km5mnsW04Q21XzBXLEZ1ZxKVo4tV
	25yRZyIYY6clHxo1pkFH1Eqmx8scqDo8aecOtrA6XnOCgXLwURx1bLfj4wcWCii7IXOuNuEr+6GZL
	THCRda2p5qonacHyLK1Q68ftZVbD+p4W7d2oBDPxZT+Yxx+0gXRW0eyEbcz94F5k/HWjw+qN4I60E
	a+WOJQMXnxR3f+zbbrrfYve4IiJVW5fSDkkEbCP5TzT5+kpee9+D6vPa3QADeN3v0oJXsl1+DAwo+
	uX8IPEVT5B7O2oS1dyfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQNQr-00229g-2S;
	Thu, 18 Jan 2024 08:07:25 +0000
Received: from mail-oo1-f48.google.com ([209.85.161.48])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQNQp-00228T-06;
	Thu, 18 Jan 2024 08:07:24 +0000
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-5989d8decbfso4585816eaf.2;
        Thu, 18 Jan 2024 00:07:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705565180; x=1706169980; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j7yA4SHYk6Zrg0OShldfrxk82ZO+cWYmPlbEQ+Gl41g=;
        b=Mnwd43p5AxXYthAvEdoFtA6+871RRhXPqM4CatO8UxbjgrCBt5iv4iHvdUxarH2Fim
         2fwKkJViwQQfKfTDD6jNDuUv4pgBenJ8pbOx7d9E376g69IWuv9Smrm5QAdPFVtn1JDR
         pCvfjP7vg3GIIIsLeIYEPznnPYlR1Maqj0m2ygDt2otP3koBsdOqytCp6fMlYTVULo/f
         fLPV2tb9sJ9tgOJSzbqVN9GCK+ESn4skFrkZ+1N6xAfhwcrFdA7dNdUItjAkZvFQniUW
         O8muW9UQJAZjv4iq+rRfgCy3WgeAURb/VgRtChV0kYEmzd060elL7Qr8tNzejkJAToeF
         SKbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705565180; x=1706169980;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j7yA4SHYk6Zrg0OShldfrxk82ZO+cWYmPlbEQ+Gl41g=;
        b=sZ47ZreFqiR1oprGu4Tnv++AjSpeO5JngHk9Uij2TwbuujhOJ6MrFP4MIM2G3Jaxna
         HKEcriNzkajCPvzMO9SOGfgglVUjReTpU8/Z2fHd7mxqWWn8nqY2T26k/ap3954fP1kX
         E1vqkGcUEVAvcZINKr3aCF0jYgxkwSyZbgdYTxIKHOwBLkUqrby37fRpNxXiGjYXEJFT
         gAPpA1UrK3n/DreEqdEbuJEMX2LTEGyf1sIXb/R9ng9wiUn7ktt8VuQwTN5xquUNcC12
         FTanNufck+xVApSEwIA1rpy/DpWPof464DxS8/N/xiUdQRmMGv76cFZDzbL7jg2r0jAM
         AV4g==
X-Gm-Message-State: AOJu0YyzgflnlwlY/30+OWVv4Limsrwg3dAAs9MFICZuLNgbI9y16a+n
	XMWT5l95dHFyTum/BEqt4u7f36We44+XX11oSgh/vQdLfrI+vHj5
X-Google-Smtp-Source: AGHT+IGas9zSD5Fhi91j/1cDN/WJ1zUM3zem4b3W1hS4RQbRmpmP68OBWo1Z3V/8mlVUgAVLZMrWcA==
X-Received: by 2002:a05:6359:600b:b0:175:f9b8:89bf with SMTP id rw11-20020a056359600b00b00175f9b889bfmr405217rwb.22.1705565180329;
        Thu, 18 Jan 2024 00:06:20 -0800 (PST)
Received: from localhost.localdomain ([221.220.134.213])
        by smtp.gmail.com with ESMTPSA id s1-20020aa78d41000000b006ce95e37a40sm2682844pfe.111.2024.01.18.00.06.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jan 2024 00:06:19 -0800 (PST)
From: amazingfate <liujianfeng1994@gmail.com>
To: nicolas@ndufresne.ca
Subject: Re: [PATCH v3 1/2] arm64: dts: rockchip: Add Hantro G1 VPU support for RK3588
Date: Thu, 18 Jan 2024 16:06:02 +0800
Message-Id: <20240118080602.9028-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <e01c9ab69f3e120cdb9b70fbacebbab32d5abba4.camel@ndufresne.ca>
References: <e01c9ab69f3e120cdb9b70fbacebbab32d5abba4.camel@ndufresne.ca>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240118_000723_065189_9BCF60C4 
X-CRM114-Status: UNSURE (   7.29  )
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
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, heiko@sntech.de, sfr@canb.auug.org.au, liujianfeng1994@gmail.com, knaerzche@gmail.com, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, robh+dt@kernel.org, ezequiel@vanguardiasur.com.ar, krzysztof.kozlowski+dt@linaro.org, p.zabel@pengutronix.de, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Nicolas,

Wed, 17 Jan 2024 14:13:19 -0500, Nicolas Dufresne wrote:
>In general, we ask submitters to share a fluster [0] score (this is just to
>demonstrate that the integration has been well validated). LibreELEC community
>have patch to enable this ffmpeg fork. I don't expect any surprise here, and you
>can just reply to my email here.

Here are fluster test result with ffmpeg v6.0 patched with v4l2 request patches
from LibreELEC and gstreamer 1.22:
https://gist.github.com/amazingfate/1675389df382ff266d6f1318fd4675fd

I am using Kwiboo's fluster fork[1] to run ffmpeg v4l2 request tests

Jianfeng

[1] https://github.com/Kwiboo/fluster/tree/v4l2-request

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
