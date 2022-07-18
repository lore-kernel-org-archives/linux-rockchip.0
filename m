Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45DDEC43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jul 2022 21:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:To:References:
	Date:Subject:Mime-Version:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F60YgRUBPEjyzBTQ9Ycr9fT+z8pxeoBA59WYwauLiAQ=; b=xOq2Gap4d2R0iD
	m2hwcAkTTC9t6RCNW9mGwmMZl1bqY85epSS3qRKvkoGSqSdp8vy9ygpG9bS59AScZDEnHLqwcWIkZ
	fOZfUW1lWXyx12P8Boay6Un2LvpiuXo5X0AAoNCCkzK0QXw0+fnGr3ipmrQRfvWIhDC5PsM10HxRs
	932sT4n7DzQuN8Htkft/NKlrH3c0uOxcR2PN5nTEZEmEiEg+cBEyPi6vespKNqAGGO1WlYWncqwKh
	uYX0WN7uxGcIOPSwf0+Wv67YAgDwUkiiAH/agkYIwyVFlJXQquzk7pc4sEyismzkExwJceLIvc8LE
	vyZ34w3J/GCRPr+UD0OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDXvH-001Ng1-8b; Mon, 18 Jul 2022 21:04:59 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDXv6-001NXP-DJ
	for linux-rockchip@lists.infradead.org; Mon, 18 Jul 2022 21:04:49 +0000
Received: by mail-ed1-x52e.google.com with SMTP id t3so17069560edd.0
        for <linux-rockchip@lists.infradead.org>; Mon, 18 Jul 2022 14:04:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kohlschutter-com.20210112.gappssmtp.com; s=20210112;
        h=from:content-transfer-encoding:mime-version:subject:date:references
         :to:in-reply-to:message-id;
        bh=lgYxQ6VDW00cU97BocyveA5Xw2LA05J8ZBbZjuEjBbs=;
        b=ysRZ20nSv1AY8vsUIYaB1KCb7Q30mE3E6K7n7d95wId/RdkNd+qdCO7zLW56+1lhQx
         FMAM3HJmvHH/obQ6GgmbKtJC5GXi2HgDaNV6K344sLUkdnRiGUnYNHG8msV+0ACStmvf
         p8Il0CHFw8LAeE8GpBIH6v9wj8AdFvCoamt3z45quczVKBP0WAzHocSWT5duzbo33hoP
         Xj+nasYNkfyWb2VkRfgNNq5R0v9Y4cUzdKTVhK4HCIhxA1y0eNXu6RRzhwNHhzbEpsVB
         +QevqZ4FAxbXohECqUjQJWRr/f+73oGlYrgrVKbUFRRNGFl6aBOzivd7IZmAufOh1GMx
         o6fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:date:references:to:in-reply-to:message-id;
        bh=lgYxQ6VDW00cU97BocyveA5Xw2LA05J8ZBbZjuEjBbs=;
        b=R4s5A+V/PcfAnFCfkj/TE2SAwpJHjzUYufzRGraGiFF6JZnLpeJKeevpSaN2EhVuSj
         61pBfsTYRhSbnjyH64r+kn3bRNtvN9fwgRRqtDCle9Hg8q8MQ5QyzEPdP59N3ShJNhSz
         xZmjU5pUTkvS1uR3g4oEn7YtPANU3u1ZdHND2eSEJ/AuKCH/kKf7jELLrt8koe8tRXi/
         J5qSWfLApcvtwGj0MEhqN0mi9RqF6lFo/DL6IW1qH8zFgNItZQAKzPGwrLvEwwzMTvSq
         TXokU2w4kgEVd/BjrMod/p869hb3J0HOKnQxZMHwB+0oziDBT081euRbQtuV/FGDUEfI
         K+2w==
X-Gm-Message-State: AJIora9maHkXwo1NW1r8g0IcizhMxthpWpHKy0aVYCFkemBp0Le06mfP
	d5/u6h1LMXDAUGck8S2lQzBPlw==
X-Google-Smtp-Source: AGRyM1uMAGPcbJs10DHZgwCacO7JwWJg0/uGhTxHr3qyP+y4XQdgLemNimWtsQu4TGNXOnTXmYe6Bg==
X-Received: by 2002:a05:6402:440c:b0:43a:1124:e56a with SMTP id y12-20020a056402440c00b0043a1124e56amr40569237eda.134.1658178284768;
        Mon, 18 Jul 2022 14:04:44 -0700 (PDT)
Received: from smtpclient.apple (ip5b434222.dynamic.kabel-deutschland.de. [91.67.66.34])
        by smtp.gmail.com with ESMTPSA id sa42-20020a1709076d2a00b007081282cbd8sm5885440ejc.76.2022.07.18.14.04.43
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Jul 2022 14:04:44 -0700 (PDT)
From: =?utf-8?Q?Christian_Kohlsch=C3=BCtter?= <christian@kohlschutter.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
Subject: Re: [PATCH v6] arm64: dts: rockchip: Fix SD card init on
 rk3399-nanopi4
Date: Mon, 18 Jul 2022 23:04:43 +0200
References: <C639AD88-77A1-4485-BAEA-2FF8FC15A844@kohlschutter.com>
 <12878108.O9o76ZdvQC@diego> <103b714c-b07c-f016-1062-84bd94786b22@arm.com>
 <9AF1E75F-5947-49B0-887D-82C426527B99@kohlschutter.com>
 <590f7a08-a6ca-be54-4254-363343642a52@arm.com>
 <A6B896E5-CD25-4441-B6A5-0BE1FA284B2C@kohlschutter.com>
 <A9634366-A012-43D2-B253-8BB9BF6005C7@kohlschutter.com>
 <CAGb2v65Ehbu1wrib2CzF1fDZuD3fHZQDhKfVusyUF9KnxTvi+Q@mail.gmail.com>
 <5ca9bd94-54d9-04f8-0098-a56ffb6f5fe1@arm.com>
 <502b3fbe-3077-407e-6010-a8cb3ffce7d6@arm.com>
 <449292CA-CE60-4B90-90F7-295FBFEAB3F8@kohlschutter.com>
 <73F9AED0-D2A8-4294-B6E1-1B92D2A36529@kohlschutter.com>
 <115AD6A4-021B-4879-BFB5-BC7689A0203E@kohlschutter.com>
 <17a4c6f6-d79c-a7b2-860f-e5944b778f9f@arm.com>
 <9405b97a-6758-ad4e-ccff-eed072096539@arm.com>
 <BF7CC548-88C9-4889-8A41-8E99C31EF81C@kohlschutter.com>
 <daf3b61c-d886-98eb-0443-de233d742041@arm.com>
 <CDF716FC-F6CF-44A9-84D9-B48C46E6AC2C@kohlschutter.com>
 <3912A668-9F73-40FD-8993-5060F632238A@kohlschutter.com>
 <7E830C9F-BB5D-4EFC-B3F4-1C580E9326A3@kohlschutter.com>
 <E5A1A1E7-449F-4161-87B9-7A6CA0CAA42C@kohlschutter.com>
 <C153DF3B-C5F7-42E5-8A86-D9193578C96A@kohlschutter.com>
To: Robin Murphy <robin.murphy@arm.com>,
 wens@kernel.org,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Markus Reichl <m.reichl@fivetechno.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>
In-Reply-To: <C153DF3B-C5F7-42E5-8A86-D9193578C96A@kohlschutter.com>
Message-Id: <38DFE34C-E4A5-4DBB-AC57-5D92D703B877@kohlschutter.com>
X-Mailer: Apple Mail (2.3696.100.31)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220718_140448_458043_1F8379FD 
X-CRM114-Status: GOOD (  10.11  )
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

QW0gMTguMDcuMjAyMiB1bSAxNDowNSBzY2hyaWViIENocmlzdGlhbiBLb2hsc2Now7x0dGVyIDxj
aHJpc3RpYW5Aa29obHNjaHV0dGVyLmNvbT46Cj4gCj4+IEFtIDE4LjA3LjIwMjIgdW0gMTQ6MDQg
c2NocmllYiBDaHJpc3RpYW4gS29obHNjaMO8dHRlciA8Y2hyaXN0aWFuQGtvaGxzY2h1dHRlci5j
b20+Ogo+PiAKPj4gbW1jL1NELWNhcmQgaW5pdGlhbGl6YXRpb24gbWF5IGZhaWwgb24gTmFub1Bp
IFI0UyB3aXRoCj4+ICJtbWMxOiBwcm9ibGVtIHJlYWRpbmcgU0QgU3RhdHVzIHJlZ2lzdGVyIiAv
Cj4+ICJtbWMxOiBlcnJvciAtMTEwIHdoaWxzdCBpbml0aWFsaXNpbmcgU0QgY2FyZCIKPj4gZWl0
aGVyIG9uIGNvbGQgYm9vdCBvciBhZnRlciBhIHJlYm9vdC4KPiAuLi4KPiBXYWxraW5nIGJhY2sg
b24gbXkgY2xhaW0gaW4gdGhlIGNvbW1pdCBtZXNzYWdlIHRoYXQgbm8gZnVydGhlciBwYXRjaGVz
IGFyZSBuZWVkZWQgZm9yIHRoZSB1LWJvb3QgaW50ZWdyYXRpb24gdG8gd29yay4KPiBPdGhlciB0
aGFuIHRoYXQsIHRoZSBhY3R1YWwgcGF0Y2ggaXMgdW5jaGFuZ2VkLgoKSSBjYW4gbm8gbG9uZ2Vy
IHZlcmlmeSB0aGF0IHRoZSB2NiBwYXRjaCBhY3R1YWxseSBpbmNyZWFzZXMgdXNlX2NvdW50IHRv
IDIuCgpBdCB0aGlzIHBvaW50LCBJIGRvbid0IGhhdmUgYSBwdXJlbHkgZGV2aWNlIHRyZWUtYmFz
ZWQgZml4IHRoYXQgd29ya3MgcmVsaWFibHksIHRoZXJlZm9yZSBuZWNlc3NpdGF0aW5nIHRoZSBj
b2RlIGNoYW5nZXMgaW4gcmVndWxhdG9yL2NvcmUuYy4KSWYgYW55b25lIG9mIHlvdSBrbm93cyBh
IHdheSB0byByZWxpYWJseSBpbmNyZWFzZSB2Y2MzdjBfc2QncyB1c2VfY291bnQgKCJjYXQgL3N5
cy9rZXJuZWwvZGVidWcvcmVndWxhdG9yL3ZjYzN2MF9zZC91c2VfY291bnQiKSB0byBhdCBsZWFz
dCAyLCB0aGVuIHdlIGNhbiByZW1vdmUgdGhlIHJlZ3VsYXRvci1hbHdheXMtb24gc3RhdGVtZW50
LgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
