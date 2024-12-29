Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4E1DE7718B
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Dec 2024 10:12:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nt8n+sXat9IvKafxmXWsqXjXQzbtYagsq8bYZroZmTc=; b=e5eu7sYn4Lces9
	jjbHFy6UBHdNk3c55cvOXk4HAjDLymUSV/nNiSfcCgs8tO9fgH/Rm8SkWcRpccjah8rz6spi8+juA
	uIOCETYkT+v3KNNxN+f70IYcclZHtBBwaB5wNBqs4K7cwXF62fO6qjU+2h3Zoj1lezs4I0hDDZlV/
	OOJr8BxFqBwp+2TqwM1/H/TXPwnTR7HHssLAtKRXLoJZnJ20n0E6DRUt1zAoYq2VUoIHDGlNlr1iu
	AzpmzEYNlblmEDJASe9R35/IVXPSjuYtUK5XlSDSXMJn8jJ/ldxBaY/TzVhF3Yzvm9WscTauxo1BJ
	s7n83c8fVTNA6dLExtMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRqHQ-00000003EkS-0Eay;
	Sun, 29 Dec 2024 10:12:16 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tRqFH-00000003EPL-1hEs
	for linux-rockchip@lists.infradead.org;
	Sun, 29 Dec 2024 10:10:04 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-43658c452f5so12065715e9.0
        for <linux-rockchip@lists.infradead.org>; Sun, 29 Dec 2024 02:10:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735467001; x=1736071801; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=khsQQuQ61UqfLoQjYcyUre/fUsjYTl1Aj9lrnLjhkeI=;
        b=wY8/jCTMW4jHKFgELcdwZcDcLK3/X5Am3wUEH01MulEoQrnAGBSA36vDoNCh72N2fu
         1X8UiKpGeyF5awiXov/AfPyaNPQOgS1TbnrhPUpetgsAp0mguxZA3eJ1C+kP/WiTXCGf
         39tksjZ+r/LqelOnIzIjGXGWI61VyXTHMWMZi5MJS2vfvzbH+pfKmzjdDAHB6D4eT9uY
         BiyEnrv/uls+oJ9n6LAfRYnAbSbvPsiSieJLcgtVuC8bA5p1VXF6f9J+wIU1igCcVb0F
         pebSuC+tcVTuSGl6oYtzqGFhnq6gRpC93XC5oCuMi7VpbFrxfNQ6bDiLLHPxI0kh4Cct
         qTcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735467001; x=1736071801;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=khsQQuQ61UqfLoQjYcyUre/fUsjYTl1Aj9lrnLjhkeI=;
        b=PtSOByWnrp2Xev9mr/6rMOVyBtJL967RoedHx5YqF+b3T+ehuR+qOfBPXjpxIyJu7Y
         6LmC9NgfA/vymnpqmKQkZxJNTTMkQWB4EfRYeclpuuErw84eX38s8KaNTmfFhf4t8Hke
         XaZE7ULf5I5Qc0VgWD+NTL4J5OulFpBFzVhksPC2NBykKFTqTRS5auuw6QR3Mqix/TGY
         e3ohWBMH3SKeQRnK0MKlP/bbYQwrjPNnlVaPPFlm3bCbZjxJWHqB01NCpFjeAXwS68KB
         4KVvtZt+PF6aDBHsn8K0HypzRn0IlOiGGNNncL1T7Cu5rwIrDZowufm2M7ocHelOirFa
         u4YA==
X-Forwarded-Encrypted: i=1; AJvYcCVOI1OE28afH8JvDbrzjGSRau9SAxkbpFXFD6KTP4LCc6IoL59yWZ4ApYkHBhU7DGd+nKwxOBDiGa7JmnvIUA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyArWgRD/vs4np8B92KXTKH3fnmtX83XWvo6YAiP1B59iVSt7GR
	sEKZJ8wdIXNbuqwK1zf6483E56bb5IKxkFgRci8MBsxqkZvWrwtMJkoa6ldS1yQ=
X-Gm-Gg: ASbGncu7iixavj+L1iCC3cc+8zM77dFlR7plnf5YEiVaA+9BFelxJ/iXItuM0B2tQQh
	XaHZ8NrQnA9JHqC+XPgg13wiC5BP8ZWs/NEs/cWnosuPg8b9nIg5j7oH90Xd8kzV1bpZyxJLk02
	mKlmd2wqGqkKVX/gAKKg9U2T/1YUyXbJjI3vwdE3eDT1zvVb2LXTbsCaUBRiRHw7p5OeLYYSfVu
	csVXBEDAASZxIdUPnSXg+yYZta7yBhpAf+ba8gWDGmUcwLPVScedbZpRYAvee3a3nPv0AG9
X-Google-Smtp-Source: AGHT+IHe3HeMgdBYJg120JuyBz3xv5V39AfkqdmPSMsMsnaeeM2fsQk5UW2Kgj9EB8ub9FEeeqqGaw==
X-Received: by 2002:a05:600c:4ec7:b0:436:6460:e688 with SMTP id 5b1f17b1804b1-43668bab39amr110519775e9.9.1735467001515;
        Sun, 29 Dec 2024 02:10:01 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436611ea423sm325608385e9.2.2024.12.29.02.09.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Dec 2024 02:10:00 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: linux-kernel@vger.kernel.org, Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>, 
 Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Huacai Chen <chenhuacai@kernel.org>, 
 WANG Xuerui <kernel@xen0n.name>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 imx@lists.linux.dev, loongarch@lists.linux.dev
In-Reply-To: <20240717-partake-antivirus-3347e415fb7d@spud>
References: <20240717-anvil-ashy-544e80a1317c@spud>
 <20240717-partake-antivirus-3347e415fb7d@spud>
Subject: Re: (subset) [PATCH v1 4/4] ARM: dts: socfpga: remove non-existent
 DAC from CycloneV devkit
Message-Id: <173546699896.10551.718059378827423411.b4-ty@linaro.org>
Date: Sun, 29 Dec 2024 11:09:58 +0100
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241229_021003_453395_6C9B7DA6 
X-CRM114-Status: GOOD (  10.71  )
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


On Wed, 17 Jul 2024 10:37:56 +0100, Conor Dooley wrote:
> There is no Rohm DAC on the CycloneV devkit according to the online
> documentation for it that I could find, and it definitely does not have
> a dh2228fv as this device does not actually exist! Remove the DAC node
> from the devicetree as it is not acceptable to pretend to have a device
> on a board in order to bind the spidev driver in Linux.
> 
> 
> [...]

Applied, thanks!

[4/4] ARM: dts: socfpga: remove non-existent DAC from CycloneV devkit
      https://git.kernel.org/krzk/linux-dt/c/ba9dfa76ebb030df6b605e16239a8052c3c02171

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
