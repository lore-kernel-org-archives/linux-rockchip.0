Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6FEBC433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Oct 2022 09:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:From:Cc:To:MIME-Version:Date:
	Message-ID:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0DXgKOQO9CwZfN1UQ4Kz+YEMYe7o0r6aZAwNR6xRLMY=; b=Hp/KegqFqTqhWd
	dNimmZzJRj43QpGSnB7AuisPpU7lMtS1rckSOI74B1h3ZG775EDPacwE72P13nbHq7/ocfdIZKs2a
	E3WEmBaqVwQ7hL/dZDcqpYSp3z+jJYqV4tN5OpwM2wzmyTn29pW2t5fHrTNg3GsD5SEIZqTN+8A9C
	fupexi5B0X4MBFC+DBR/c4vlseuyEJQtOyyr9nBFh5XBDDrtlyp6x7Wo604lGlKp2D2Q4cQ6djW7n
	bMpL9uLTNSkdD5PS9FqrB2jL1KAxuhCYXP8GajeocZJ6nvIU21N7cBfWlOsHpE9qgJzyITAZDKwhb
	pm3jfTh9fl2umUmcaJvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ondAG-008saj-Hk; Wed, 26 Oct 2022 09:57:36 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ondAD-008saC-85
	for linux-rockchip@lists.infradead.org; Wed, 26 Oct 2022 09:57:34 +0000
Received: by mail-wm1-x330.google.com with SMTP id bg9-20020a05600c3c8900b003bf249616b0so1141378wmb.3
        for <linux-rockchip@lists.infradead.org>; Wed, 26 Oct 2022 02:57:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:subject:from:reply-to:cc:to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3MaK4RKyYEjcTN5zHOlQRn1w7uiJa/5jdk5dAd9yul4=;
        b=nIZGE645UWRZLVNsQQ1FvnCsj6LkhFXCPoVElJOGb+g/r4s3eLIvA4vagtVY5WSYgR
         OQVQ5TWKpgUrIO83XLNG3p0CipbD4gd1LIoZIzNGmJy6NiA6xcejVaxg6EkWTUn0QxRz
         irC/pfWickM0vFsa66AflF4JRu94eEhmoZYL+mmVTHKmEvZuoh/qdvogGi38cq7boof0
         RcYz3p9/XPzWbsYeJ6NV8UF0DxXQsebdCqwF+Gtk3BF9UtzDft7YxNHyQMYKw+IbdDI5
         EOyAiG/psQN1od7Mb/mRAbQ9Cp/pZMgZJQ0JzPQFv0/CAj7v1Jt+HzzhZRLemkFssSwr
         4zXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:subject:from:reply-to:cc:to:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3MaK4RKyYEjcTN5zHOlQRn1w7uiJa/5jdk5dAd9yul4=;
        b=MALrPkcZVpLydkQEVRxmwm7YO5PRnr2ADBipXvuWmu0zkR4LvqVrMv+oiObmCVzzcV
         AUm3RonyyjNSOA+JvyWdNJCT9PYNmIlgofskMui0ZAc650ajSxXC12PNBbG1g26BUugY
         lFFyg6xaA3QyPInGA3jT628KU9m0NzUe5YYHysEwqKoeHieYA4MYabfJPSDJf8Y4hFYu
         aqKHbIna3xG1onY0hMfRz9Yb/uVcbJHtsQWJb4XBgAiuPyfH6WhcjJsPHRHqDkhkesa5
         ZcQdUj8WGolBe2lwEAXxm3Rw2pFKjRtMChaMRSXooI2oo3fNWWx77Ztx0fLd8cQObFNz
         HQYQ==
X-Gm-Message-State: ACrzQf0Y0bWjhLWHKldI+l/3VW6c9Y4dxC5GheyJFOHhzD1n0CVFW2sX
	EjjQaFejlL3oXiywkWWeUaFbO57ImkA=
X-Google-Smtp-Source: AMsMyM54OMn97lzt00kb9zMzrsRi0jdXfCCI1DsxpRXhtpzOgMX/E7Ll/KLkvE+3RmQadzmL/rDIWA==
X-Received: by 2002:a05:600c:3d10:b0:3c6:e1fb:b336 with SMTP id bh16-20020a05600c3d1000b003c6e1fbb336mr1828287wmb.9.1666778246830;
        Wed, 26 Oct 2022 02:57:26 -0700 (PDT)
Received: from [192.168.1.42] (mail.eskon.cz. [213.155.251.67])
        by smtp.gmail.com with ESMTPSA id d11-20020a056000114b00b00231893bfdc7sm4857933wrx.2.2022.10.26.02.57.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Oct 2022 02:57:26 -0700 (PDT)
Message-ID: <49af22c1-d7c5-0b44-550c-eaaa9aa52c89@gmail.com>
Date: Wed, 26 Oct 2022 11:56:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
To: linux-rockchip@lists.infradead.org
Cc: macromorgan@hotmail.com, michael.riesch@wolfvision.net, heiko@sntech.de
From: =?UTF-8?Q?Daniel_Br=c3=a1t?= <danek.brat@gmail.com>
Subject: rk3568: dsi: panel has shifted image
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221026_025733_314253_9EFEC8DA 
X-CRM114-Status: UNSURE (   6.97  )
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
Reply-To: danek.brat@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello,
I am experimenting with the official Raspberry Pi 7" DSI touch screen on
Radxa rock 3A v1.3. Using upstream kernel 6.1-rc2, I managed to get the 
screen
to turn on and display picture, but the image is shifted to the left 
with the
overflow displayed on the right side. Plus a bit of the right side is 
not used
at all (black). The image is also kinda "shimmering", like it was constantly
scrolling vertically.

Unused black stripe on the right: https://imgur.com/IzHSwsq
Shift of the image and shimmer: https://imgur.com/7Fdd6AX

I remember seeing some mentiones of shifted image in the initial rk3568 dsi
support patches, but dont know if it is related.

My kernel config: https://pastebin.com/rvQ7grqd
My device tree: https://pastebin.com/7Hv1Cmuv
Bootlog: https://pastebin.com/fHipufFA

Best regards,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
