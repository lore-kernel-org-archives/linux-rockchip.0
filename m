Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69BEBC43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Jul 2022 17:01:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=46/IBTFRJzBSsWVn8OH/jr833BuyAE2djs62OqNHSTE=; b=II0+sLE6TjRgmd
	tOqgyqscti8CmT8ueSJLLZ0douL4josFWYdi0zFAwNZzBKy1kaE4eg+CnWJAZW25XpGZUD7a4a5OU
	yNHk/xTZBLDPhX1XtyvbgUKx9A0IDMKXqstZj/IUAPRg7sCCIZ9F+UY/XpePA0BMfkE8pZhnnf94d
	W0QGSBPYi6O26zXE97uqM8CYkWg32MApmydukeq4mDw5zrBSCip1VRDt5Md3DJ7zbRSm/jQKenIdp
	IwaVn90eo1T8wKaDRZqwwyobw3MUCn+TM585lLoSHPQl1A3zMEBXgtBfL4VUN/fOamnwwD90YExnN
	5M4h1ROFLtfFWjZktjOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCOgs-0090Wo-8U; Fri, 15 Jul 2022 17:01:22 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCOgh-0090QA-P8
	for linux-rockchip@lists.infradead.org; Fri, 15 Jul 2022 17:01:13 +0000
Received: by mail-ej1-x62e.google.com with SMTP id z23so10014326eju.8
        for <linux-rockchip@lists.infradead.org>; Fri, 15 Jul 2022 10:01:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kohlschutter-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=dIRVpOqiqH59RP0AoZiD2s3xlmYa2fxQT3tSFC8Essc=;
        b=HRy26nf+hmKczXYwhz8g5F1tYXyzvWLNDZbn+FWf+AiEATRROmPI+AoL9+m/YxBlLS
         K3uRB9w/1ZIIZV6E+hgu7GNHmQQFNvxB7fbmvBWEyxKY1+RF5dNWI1Q2veOAs8c8cW+Y
         hhxBqUOvZnpOaa4+p9EQ7lw6c5Q3W7aDFgdjclMTKaQPL3uGM28Bn1IA3BAeAjxiYckB
         N6bl61gRnYmN0esXHP2QkHcXNMWT09uysgJvDCcpyB8F5rNRlSdwFWt37o2tmfk27cWL
         MEKgBmxUvEYNaNwjpKnJDgT/2Uo2IqAtSUdBXGKFinOK3WxS7OTqYmAgx/rOf5b9UOzq
         L7nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=dIRVpOqiqH59RP0AoZiD2s3xlmYa2fxQT3tSFC8Essc=;
        b=xEPAyJh5nTNRKYeD1vLj2fgXWo1UAbbioXVYABcMtyEL/AVPDZQN7kzlB8dQgZZhHK
         ji56ACeWg2ehFjf6U7j9qX5+6K9PbmRNRCcGQBLPTgPED5NZtYX0z+goIgwAQ8fqNrtb
         E/iS9ZGDRFNzr6J5LdR6YX7qwmKFxCkoq7hFyfcuBj2CAHz/YGPui6iAaq+Qk0o4XS+P
         rV++OOIA3/2lQmwvk2A6NHwdxdpxU+tWCLTceFsBIwS9tVCMEZ1cQA6UnDNm3GNfbe6h
         c0nsLb+n5pOLi9Qg0g01v+1aSHbLA4KccMy9EpMMiTs13zg6Zys9zvYKXDoKffCRniva
         XJ4Q==
X-Gm-Message-State: AJIora9WJUYownaCNc4d8Q6DFOp1Q5584jAviPloD5SjWELm38gGWSmz
	8i9M/a6cDyNCeyo4/7gVNj4rDA==
X-Google-Smtp-Source: AGRyM1s485bZlc9JnrL6z/lbu4yj3ep3vPK+ktztWjflB/3vWNqvh4mR5HlbnzXJR9uF9cnStQ2dMA==
X-Received: by 2002:a17:906:8a4d:b0:72b:6b8d:3779 with SMTP id gx13-20020a1709068a4d00b0072b6b8d3779mr14677191ejc.759.1657904463891;
        Fri, 15 Jul 2022 10:01:03 -0700 (PDT)
Received: from smtpclient.apple (ip5b434222.dynamic.kabel-deutschland.de. [91.67.66.34])
        by smtp.gmail.com with ESMTPSA id f24-20020a056402069800b004316f94ec4esm3142765edy.66.2022.07.15.10.01.02
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Jul 2022 10:01:03 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
Subject: [PATCH v3] arm64: dts: rockchip: Fix SD card init on rk3399-nanopi4
From: =?utf-8?Q?Christian_Kohlsch=C3=BCtter?= <christian@kohlschutter.com>
In-Reply-To: <502b3fbe-3077-407e-6010-a8cb3ffce7d6@arm.com>
Date: Fri, 15 Jul 2022 19:01:02 +0200
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>
Message-Id: <449292CA-CE60-4B90-90F7-295FBFEAB3F8@kohlschutter.com>
References: <C639AD88-77A1-4485-BAEA-2FF8FC15A844@kohlschutter.com>
 <12878108.O9o76ZdvQC@diego> <103b714c-b07c-f016-1062-84bd94786b22@arm.com>
 <9AF1E75F-5947-49B0-887D-82C426527B99@kohlschutter.com>
 <590f7a08-a6ca-be54-4254-363343642a52@arm.com>
 <A6B896E5-CD25-4441-B6A5-0BE1FA284B2C@kohlschutter.com>
 <A9634366-A012-43D2-B253-8BB9BF6005C7@kohlschutter.com>
 <CAGb2v65Ehbu1wrib2CzF1fDZuD3fHZQDhKfVusyUF9KnxTvi+Q@mail.gmail.com>
 <5ca9bd94-54d9-04f8-0098-a56ffb6f5fe1@arm.com>
 <502b3fbe-3077-407e-6010-a8cb3ffce7d6@arm.com>
To: Robin Murphy <robin.murphy@arm.com>,
 wens@kernel.org,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Markus Reichl <m.reichl@fivetechno.de>
X-Mailer: Apple Mail (2.3696.100.31)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220715_100111_824498_3D6C240B 
X-CRM114-Status: GOOD (  11.15  )
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

bW1jL1NELWNhcmQgaW5pdGlhbGl6YXRpb24gbWF5IGZhaWwgb24gTmFub1BpIFI0UyB3aXRoCiJt
bWMxOiBwcm9ibGVtIHJlYWRpbmcgU0QgU3RhdHVzIHJlZ2lzdGVyIiAvCiJtbWMxOiBlcnJvciAt
MTEwIHdoaWxzdCBpbml0aWFsaXNpbmcgU0QgY2FyZCIKZWl0aGVyIG9uIGNvbGQgYm9vdCBvciBh
ZnRlciBhIHJlYm9vdC4KCk1vcmVvdmVyLCB0aGUgc3lzdGVtIHdvdWxkIGFsc28gc29tZXRpbWVz
IGhhbmcgdXBvbiByZWJvb3QuCgpUaGlzIGlzIHByZXZlbnRlZCBieSBzZXR0aW5nIGFuIGV4cGxp
Y2l0IHVuZGVydm9sdGFnZSBwcm90ZWN0aW9uIGxpbWl0CmZvciB0aGUgU0QtY2FyZC1zcGVjaWZp
YyB2Y2MzdjBfc2Qgdm9sdGFnZSByZWd1bGF0b3IuCgpXaGlsZSB1c2luZyBhIGxpbWl0IG9mIDNW
IHNlZW1zIHRvIHdvcmssIGFuIGFkZGl0aW9uYWwgc2FmZXR5IGJ1ZmZlcgpzaG91bGQgcHJldmVu
dCBhY2NpZGVudGFsIHRyaXBwaW5nLCBwcmV2ZW50aW5nIGEgc3lzdGVtIGhhbmcuCgpTZXQgdGhl
IHVuZGVydm9sdGFnZSBwcm90ZWN0aW9uIGxpbWl0IHRvIDIuN1YsIHdoaWNoIGlzIHRoZSBtaW5p
bXVtCnBlcm1pc3NpYmxlIFNEIGNhcmQgb3BlcmF0aW5nIHZvbHRhZ2UuCgpTaWduZWQtb2ZmLWJ5
OiBDaHJpc3RpYW4gS29obHNjaMO8dHRlciA8Y2hyaXN0aWFuQGtvaGxzY2h1dHRlci5jb20+Ci0t
LQogYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktbmFub3BpNC5kdHNpIHwgNCAr
KysrCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCiBtb2RlIGNoYW5nZSAxMDA2NDQg
PT4gMTAwNzU1IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LW5hbm9waTQuZHRz
aQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LW5hbm9w
aTQuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LW5hbm9waTQuZHRz
aQpvbGQgbW9kZSAxMDA2NDQKbmV3IG1vZGUgMTAwNzU1CmluZGV4IDhjMGZmNmM5NmUwMy4uNjY5
Yzc0Y2U0ZDEzCi0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LW5hbm9w
aTQuZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1uYW5vcGk0
LmR0c2kKQEAgLTczLDYgKzczLDEwIEBAIHZjYzN2MF9zZDogdmNjM3YwLXNkIHsKIAkJcmVndWxh
dG9yLWFsd2F5cy1vbjsKIAkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MzAwMDAwMD47CiAJ
CXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDMwMDAwMDA+OworCisJCS8vIG11c3QgYmUgaW5p
dGlhbGl6ZWQgb3IgU0QgY2FyZCBtYXkgZmFpbCB0byBpbml0aWFsaXplIC8gc3lzdGVtIG1heSBo
YW5nCisJCXJlZ3VsYXRvci11di1wcm90ZWN0aW9uLW1pY3Jvdm9sdCA9IDwyNzAwMDAwPjsKKwog
CQlyZWd1bGF0b3ItbmFtZSA9ICJ2Y2MzdjBfc2QiOwogCQl2aW4tc3VwcGx5ID0gPCZ2Y2MzdjNf
c3lzPjsKIAl9OwotLSAKMi4zNi4xCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
