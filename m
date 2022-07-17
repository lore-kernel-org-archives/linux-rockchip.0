Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4A55C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Jul 2022 19:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LqLyk9u2Az4WzXxUGgYjwDGCDGROydLaZ8dJoYuaxws=; b=QbU5JjKKdsZilA
	Tion0OX1dO7OsbbQXdgNhQGqLmbxjzVrPxcm2bm8POICCmLaWpFIYlZWM0smrrTsDfQOu7LHZYZDC
	ZeyXSVh8eq4JDbQzVgQvCcMcT7pbU2K91qiBPyQH1uVWbkXP8RZPj8BOZ10uTAb4rMHIOtt46TjRV
	KDXLU0twbq3VgEytFbgXTMHCFCxkZfY3mwkWnZxJx9EjXhA1f+kw1ihnw1FZtq4igE9OIeti9xON7
	xQHpiTnq7Dv+I2icc0usRP7cVm8UpG/MHIIAUGkS9q8CpI9vHEFaSQZHYPr5W9HxFMTgzv8kXUBIZ
	UUev/7uAylagi/9u+hEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDA0K-008GBB-DJ; Sun, 17 Jul 2022 19:32:36 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDA0A-008G7j-J5
	for linux-rockchip@lists.infradead.org; Sun, 17 Jul 2022 19:32:27 +0000
Received: by mail-ed1-x533.google.com with SMTP id t3so12819344edd.0
        for <linux-rockchip@lists.infradead.org>; Sun, 17 Jul 2022 12:32:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kohlschutter-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=bzc8+SMTjAuL3hWfjVp5UNr8nKbzbn5xX+8BRCLvn/4=;
        b=SOKAhVvf6ZDCy89DcFq/ROSdecedn2B5HAoiH+Zlxisou3tv6x1m9OCk4lR2Ptu4YX
         7XT17iXG3fF0xyeDQcMEkQYDfMgaehCg8Y8j85DeA0HNp+6XWNKgPWafMZvkscRje2cS
         WNOhnoLJytL/UErwoiQPnjDRuwCKx3/HV5cJT6GGUmBiLgrSMCehrIgNoUvPOyqMDJQT
         /ahT+Hx6xANcVl6af018LBUYIUoh2cVbKE4aOHvg3cdTuFyWK0qNXj9LEY21RSUjgfaC
         kxli4VW6VRzAPCGOVNGwGvnq/lWDHSS8ISlmzEWQBmR9b0kDCqUEq3d9pAGpAhDM17N1
         vNgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=bzc8+SMTjAuL3hWfjVp5UNr8nKbzbn5xX+8BRCLvn/4=;
        b=3hFPI2sh12E9SnrCfXtB1J0+wxSGgyvkuRWA/OVYERebZ7tZBvc99hZr1G2HriVRYa
         3mNEN/DhZhJ3uNN7RvN15Y4DWusjuL5PL01ImfOE2kGv88bndtszMFspAvAmqOMFh+T+
         SzIsYEYge8eG6EngfS1p/mriZjLih8FgyjhBj8gCQzyL6k7/XuuGdKkoFssW1Ci2T6M7
         xRK2zeja3AcPFezR9giFIRiK/flM3taU+itq4/j6nJAiUc25m4w71UqLgkz+tpjqWH4x
         CuwufxW4aaKKRGaufDt3LS5xOzR9b8AQtBmZ3J7tU+0FVt894RZb4ApGoq25t8xfBclW
         9tyA==
X-Gm-Message-State: AJIora+70+iwUw92W/y2d/xrcLfdHdphvv3vgAr15fjfMqQOzATDVU7q
	SgaeZJXdMkCs+9uHgBP3LgYYSA==
X-Google-Smtp-Source: AGRyM1uF29btnV+ubkEnBmWrWy6/jD2F1VNvGsr1evGz6n+Z/04BFjDfx0RbVWmdkajKBB5gjDa+fA==
X-Received: by 2002:a05:6402:4016:b0:43a:f310:9522 with SMTP id d22-20020a056402401600b0043af3109522mr32447659eda.200.1658086344896;
        Sun, 17 Jul 2022 12:32:24 -0700 (PDT)
Received: from smtpclient.apple (ip5b434222.dynamic.kabel-deutschland.de. [91.67.66.34])
        by smtp.gmail.com with ESMTPSA id p13-20020a05640210cd00b00435a62d35b5sm7177568edu.45.2022.07.17.12.32.23
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Jul 2022 12:32:24 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
Subject: Re: [PATCH] arm64: dts: rockchip: rk3399-nanopi4: Fix voltage
 regulator config
From: =?utf-8?Q?Christian_Kohlsch=C3=BCtter?= <christian@kohlschutter.com>
In-Reply-To: <963AF33B-54B7-4172-92D1-E2898E256A7E@kohlschutter.com>
Date: Sun, 17 Jul 2022 21:32:23 +0200
Cc: Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>
Message-Id: <750501EB-8A79-459B-89B8-E9064632A68B@kohlschutter.com>
References: <963AF33B-54B7-4172-92D1-E2898E256A7E@kohlschutter.com>
To: Robin Murphy <robin.murphy@arm.com>,
 wens@kernel.org,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Markus Reichl <m.reichl@fivetechno.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
X-Mailer: Apple Mail (2.3696.100.31)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220717_123226_640138_50AC2A03 
X-CRM114-Status: GOOD (  17.42  )
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

VGhpcyBwYXRjaCBvYnZpb3VzbHkgcmVxdWlyZXMgInJlZ3VsYXRvcjogY29yZTogUmVzb2x2ZSBz
dXBwbHkgbmFtZSBlYXJsaWVyIHRvIHByZXZlbnQgZG91YmxlLWluaXQiIGFuZCBvYnNvbGV0ZXMg
IltQQVRDSCB2NV0gYXJtNjQ6IGR0czogcm9ja2NoaXA6IEZpeCBTRCBjYXJkIGluaXQgb24gcmsz
Mzk5LW5hbm9waTQiLgpUaGUgbGF0dGVyIHBhdGNoIG1heSBzdGlsbCBiZSB1c2VmdWwgZm9yIGV4
aXN0aW5nIGtlcm5lbHMgd2hlcmUgb25lIGNhbiByZWNvbXBpbGUgdGhlIGRldmljZSB0cmVlIHNl
cGFyYXRlbHkuCgo+IEFtIDE3LjA3LjIwMjIgdW0gMjE6Mjkgc2NocmllYiBDaHJpc3RpYW4gS29o
bHNjaMO8dHRlciA8Y2hyaXN0aWFuQGtvaGxzY2h1dHRlci5jb20+Ogo+IAo+IEEgc2VyaWVzIG9m
IGlzc3VlcyBleGlzdCBhcm91bmQgdGhlICJ2Y2MzdjBfc2QiIHZvbHRhZ2UgcmVndWxhdG9yIHRo
YXQKPiBtYWRlIGl0IG5lY2Vzc2FyeSB0byBtYXJrIGl0ICJhbHdheXMtb24iLgo+IAo+IFdpdGgg
dGhlIHBhdGNoICJyZWd1bGF0b3I6IGNvcmU6IFJlc29sdmUgc3VwcGx5IG5hbWUgZWFybGllciB0
byBwcmV2ZW50Cj4gZG91YmxlLWluaXQiLCB0aGlzIG9wdGlvbiBpcyBubyBsb25nZXIgbmVjZXNz
YXJ5Lgo+IAo+IFJlbW92aW5nIHRoaXMgb3B0aW9uIG5vdCBvbmx5IHByZXZlbnRzIGEgaGFuZyB3
aGVuIHJlYm9vdGluZyBOYW5vcGkgUjRTLAo+IGl0IGFsc28gZW5zdXJlcyB0aGF0IGJvb3Rsb2Fk
ZXJzIGxpa2UgdS1ib290IGNhbiBib290IGZyb20gYW4gU0QgY2FyZAo+IHJpZ2h0IGF3YXksIHdp
dGhvdXQgb3V0LW9mLXRyZWUgcGF0Y2hlcyB0aGF0IHJlLWluaXRpYWxpemUgdm9sdGFnZSBsZXZl
bHMuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEtvaGxzY2jDvHR0ZXIgPGNocmlzdGlh
bkBrb2hsc2NodXR0ZXIuY29tPgo+IC0tLQo+IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszMzk5LW5hbm9waTQuZHRzaSB8IDEgLQo+IDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LW5h
bm9waTQuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LW5hbm9waTQu
ZHRzaQo+IGluZGV4IDhjMGZmNmM5NmUwMy4uNTViOTNlYWMyZjk5IDEwMDY0NAo+IC0tLSBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LW5hbm9waTQuZHRzaQo+ICsrKyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LW5hbm9waTQuZHRzaQo+IEBAIC03MCw3
ICs3MCw2IEBAIHZjYzN2MF9zZDogdmNjM3YwLXNkIHsKPiAJCWdwaW8gPSA8JmdwaW8wIFJLX1BB
MSBHUElPX0FDVElWRV9ISUdIPjsKPiAJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gCQlw
aW5jdHJsLTAgPSA8JnNkbW1jMF9wd3JfaD47Cj4gLQkJcmVndWxhdG9yLWFsd2F5cy1vbjsKPiAJ
CXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDMwMDAwMDA+Owo+IAkJcmVndWxhdG9yLW1heC1t
aWNyb3ZvbHQgPSA8MzAwMDAwMD47Cj4gCQlyZWd1bGF0b3ItbmFtZSA9ICJ2Y2MzdjBfc2QiOwo+
IC0tIAo+IDIuMzYuMQo+IAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
