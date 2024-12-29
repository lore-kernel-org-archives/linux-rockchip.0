Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74B8AE7718B
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Dec 2024 19:14:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qtp1xmPH7ptL73okl+GCenWXuzyuIxR5OHdB/NutHmw=; b=ZUaTNnK/CnP/HO
	0yO4Ud64cf8AuCa2eIacHwzwAR4Qj9Dv9FgpojPC6UsKa13BN0JqFYcSju0mBS0vX1Mh/AcjUxlGa
	xvhmV95Z4lp15O2GN+mUMHIhXlYiiiYuQeG8tfepHZ5jovQ+ibh1Weeuk32mXg58UXdxEHRRYS5+3
	h4oS1tFuwFxhCgz2yl7mhHh0usJq5K6jUxTluVLYo8Q2wyCKpigxQ67t2sAHGICQcBbBXmS/Y/yKa
	EBqN6GANYF5EIDqZG/oE+qaedm8cj1S6oJvqlfA8L9ti9WnvQxu23TwKQ/YcPcFexfFLnixGjKiUV
	xg3P+mqgqJQM2dAKV3EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRyk5-00000003nje-1UbJ;
	Sun, 29 Dec 2024 19:14:25 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tRyiu-00000003nfg-2dAq;
	Sun, 29 Dec 2024 19:13:13 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-385d7b4da2bso7368686f8f.1;
        Sun, 29 Dec 2024 11:13:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735499591; x=1736104391; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JB6RWy27UAdhtIGPVvajCMjk6utO9+OJ6w7pMgBIS2Q=;
        b=guaSJ1T3xzdowxNWvvgsEwIkhBf5m43pR+MX+KEtMdzr1KUQD1ohx5AeWzbasEPJHs
         RjzbM8gzYegqUuwxYchd6ndqJ68xAKSOiRylLz2Dmb8WNG4qeHiGZnqF3dlZM2twLJZV
         u6I24tmt0URxXcisbvnujTPeCP5ressYj2MXQekToPhFomIqaiHD7znwHy7z3h85kgoB
         +vjbJi1OJBlZ/7io2oVapnvDbRi1vrK3xHDDdUUkvxN+WjPnFJ3U97of+Uq/WVNbeBXC
         HQ39ZByX37K9Gp5wZ8x0T3x9/vZQY6fHs1sAFB7w44PLJPkov+hH9+Mli1quP+IysZY0
         CPKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735499591; x=1736104391;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JB6RWy27UAdhtIGPVvajCMjk6utO9+OJ6w7pMgBIS2Q=;
        b=CPqgc5wNSh45MVmZGjvXUninVzcZkIn16Sqq8PxHqbzaC/2qxaTrT4aDkhk5XyWxu+
         4DB2p3yRGoFPggVIzGM8GsN8FckX7uVk5bib9pz+LzfaCvK/I11hmIIP9lVipXj33PeX
         SuSVWaJTn7StjxFluzkLssg22enmGkK44As5IHQXxwJKKXelnLfzfNWzUu4j+zbZjCvK
         3kM7YySQm+ef3fyHhA8BkZA9YzO53eZN5zwe5/0T3PC9JtNftuZockrffBFAMEIn3cN3
         7H8aO7Gk2hpDnLyDNWzTn7aY86ZWJBTfaZQCWT2yUUVmF4c0rbs8t4UD0nl8+QyLFN9n
         u+5Q==
X-Forwarded-Encrypted: i=1; AJvYcCVElRInDabL1F7Gq1Xa5/Fv4VcZXENyTMhhAnzX86Bj4m5rA2skpbFllAqkziT9ZAsE4KO75ZJV+xxp2vUVM9fM@lists.infradead.org, AJvYcCW1LgkVq6jil9ohv6vBvS033l2zd1SHjnALKR9EZwby0FfJutZc+lXYvrvhd6s8P0aLP72R0rEUAvbP08S9Qds=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx9nBgxaYgp/ig5DRQzaRuwPFmq9ZRTeGinWUGMVBe2t1wbkKDm
	iOG9CTqKBuW6CWe7I0PRWlvphv7rnGo8nC/pElDCHSAnMkIBCFqjTg1l2BKW3zzXiwjOBETqTCn
	dUZXR6R78yyvSRoHzAVd9/ErZAdU=
X-Gm-Gg: ASbGncsE+AsClTRY2J8+3OwCZrlucPNmXIALyUz/VV7zRi1TGwd1ZwA4xwwA6KO+na/
	9Qtyd0+E+YnHEdhVSITw3NfQQrOELmzJ1EqGDPW5VU6YGlEHFUe+lJuoMnWWdXyYZHaOzfw==
X-Google-Smtp-Source: AGHT+IFyd5Msx632w46tfWX0hlTHeVsnNhwuiCp4vm2FWrZmduOH4ED55+NPC4x26rTlShL/wyyhKorVA+5b15950H4=
X-Received: by 2002:a05:6000:1846:b0:385:e88a:7037 with SMTP id
 ffacd0b85a97d-38a221e27afmr28707300f8f.6.1735499590563; Sun, 29 Dec 2024
 11:13:10 -0800 (PST)
MIME-Version: 1.0
References: <20241229184256.1870-2-honyuenkwun@gmail.com> <20241229184256.1870-11-honyuenkwun@gmail.com>
In-Reply-To: <20241229184256.1870-11-honyuenkwun@gmail.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Sun, 29 Dec 2024 13:12:59 -0600
Message-ID: <CALWfF7JEzMd0YgOKD85z4YiuKHUoNT4OzyRVXTDO2o7HTPWF3g@mail.gmail.com>
Subject: Re: [PATCH 6/7] arm64: dts: rockchip: Enable HDMI1 on Orange Pi 5 Max
To: Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241229_111312_666861_30947FFE 
X-CRM114-Status: UNSURE (   8.90  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gU3VuLCBEZWMgMjksIDIwMjQgYXQgMTI6NDXigK9QTSBKaW1teSBIb24gPGhvbnl1ZW5rd3Vu
QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBFbmFibGUgdGhlIHNlY29uZCBIRE1JIG91dHB1dCBwb3J0
IG9uIHRoZSBPcmFuZ2UgUGkgNSBNYXgKPgo+IFNpZ25lZC1vZmYtYnk6IEppbW15IEhvbiA8aG9u
eXVlbmt3dW5AZ21haWwuY29tPgo+IC0tLQo+ICAuLi4vZHRzL3JvY2tjaGlwL3JrMzU4OC1vcmFu
Z2VwaS01LW1heC5kdHMgICAgfCA0MSArKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFu
Z2VkLCA0MSBpbnNlcnRpb25zKCspCgpUaGlzIGlzIGJhc2VkIG9uIHRoZSBIRE1JMSBlbmFibGVt
ZW50IFsxXS4gSSB0ZXN0ZWQgdXNpbmcgQ3Jpc3RpYW4ncyBicmFuY2ggWzJdLgoKWzFdIGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzIwMjQxMjExLXJrMzU4OC1oZG1pMS12
Mi0wLTAyY2RjYTIyZmY2OEBjb2xsYWJvcmEuY29tLwpbMl0gaHR0cHM6Ly9naXRsYWIuY29sbGFi
b3JhLmNvbS9jcmlzdGljYy9saW51eC1uZXh0Ly0vY29tbWl0cy9yazM1ODgtaGRtaTEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
