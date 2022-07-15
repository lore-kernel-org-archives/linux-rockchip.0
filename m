Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F77CC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Jul 2022 17:12:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bHTpq77DKk3E7YN29gsKV+ii59ROPqFczVDcadBmidU=; b=K2kcKnKyoZKSkK
	s9mCklfIpA4aP8cMtFNKBkpALE2PYyBhcGMqH4sPUi2u3DxaP3vaqIZkzkx8hFsxxHj6eiwtBAaNM
	Ldkbmr5cPrZr+O6jzLzE8Hb5zQWfzW7H5EdtYS2bvYb0cQIn3h2eM5aR5NkiMvLu4KH2/ezbasCKB
	9ZzMDrPXUY7nPmg18OSvpwIFL9c4wvSf/gfRQ3gIMC7OjnOjDpCa92bioseZPc6jcSvbbwQxTQBjG
	1buJsYYVxUhtwuVBvHQLzro61uJstu5t6dT27PRJZxDK0LNPDHE4lbYFPdOux4nmpD/g8yNDxVEkm
	83akuRSBjDIDUQqcYofA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCOrZ-00948x-SL; Fri, 15 Jul 2022 17:12:25 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCOrV-009486-9I
	for linux-rockchip@lists.infradead.org; Fri, 15 Jul 2022 17:12:22 +0000
Received: by mail-ed1-x52e.google.com with SMTP id g1so7087607edb.12
        for <linux-rockchip@lists.infradead.org>; Fri, 15 Jul 2022 10:12:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kohlschutter-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=KXfsOmRJt+ko9q2xCFE2u/0piZsS+7uuoZliHVGfwJQ=;
        b=JrUCiOaL0g8EZjc7wwNGSWCtN8AoXNWc/FBN+G13zkfhPnZfEyApW41SbcCUJVq6VO
         dR7HcyqrkF58dvkmfAe5ylq+x4m6VpO7NMbfqSSS19cfgNYETRuS3UrwNSOsLk23EDvp
         k1Ux3y42VDgKAghB/G3mnPHggMBKcCQYjJzDEalT18pNvI14L+0dDiBVMOQo1cTafUzf
         fep39I8Wf6WaljcC8DGRHErqfQaFQsMSQHrE7CJH1vANwCMDcKWNXL0wgIYpiD8x97zr
         BnQUicxkYqw/8dfPVegc4muo10PfDYkr1DNLyiuq2VZPfINs4wTMyGy2wPz9QQHw+MHD
         2C7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=KXfsOmRJt+ko9q2xCFE2u/0piZsS+7uuoZliHVGfwJQ=;
        b=oF932wLyRJMuAz+/qEUrigSHQtwve5K8wUsZDyfPqJzdIqgna/xS4SXizuq2kIrcrp
         xwo6CC1CNAWFPQ3huQv33X6IolKHKqoWBNEEpjqX5RwaVKh+yqa+C18rwCYnqHSNXyfD
         Q78VLn+DiDUYMdQT02tupM8ne5MXx5HAZVIAk1hRSGDDypls6eFuEt6mJDAmqbiTywzU
         mpRm+Z+lLZlUe4/2bNM/ge6QEn29u1pnew6tDgt0zr+N+q+iRP4IUpo7zUwbbaCm49Yy
         TZabOcnLDo+mrjLs42qVAhY1K17xCT3d/T73MWtdLtCFfmQU6qfF6THigGRk3B6J1eic
         N5gg==
X-Gm-Message-State: AJIora/fb1R6zaDWbOCjSWd9zX0OkKBPsl0G5Q7BO81XNaPHxpo4TX9L
	y+X6KkjgYejEsS2k0EOHNcwn/g==
X-Google-Smtp-Source: AGRyM1sSLPziXUwYzLmFnukeeceHvDSD/6Jo8MXOHXz40mmUWueDudeIQrT56eXfaH9gWvcZcE3Acw==
X-Received: by 2002:a05:6402:34c1:b0:43a:bd7a:898a with SMTP id w1-20020a05640234c100b0043abd7a898amr20426220edc.426.1657905132673;
        Fri, 15 Jul 2022 10:12:12 -0700 (PDT)
Received: from smtpclient.apple (ip5b434222.dynamic.kabel-deutschland.de. [91.67.66.34])
        by smtp.gmail.com with ESMTPSA id l5-20020aa7c3c5000000b0043575ae2051sm3179899edr.62.2022.07.15.10.12.11
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Jul 2022 10:12:12 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
Subject: [PATCH v4] arm64: dts: rockchip: Fix SD card init on rk3399-nanopi4
From: =?utf-8?Q?Christian_Kohlsch=C3=BCtter?= <christian@kohlschutter.com>
In-Reply-To: <449292CA-CE60-4B90-90F7-295FBFEAB3F8@kohlschutter.com>
Date: Fri, 15 Jul 2022 19:12:11 +0200
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>
Message-Id: <73F9AED0-D2A8-4294-B6E1-1B92D2A36529@kohlschutter.com>
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
To: Robin Murphy <robin.murphy@arm.com>,
 wens@kernel.org,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Markus Reichl <m.reichl@fivetechno.de>
X-Mailer: Apple Mail (2.3696.100.31)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220715_101221_336545_700457E4 
X-CRM114-Status: GOOD (  10.34  )
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
YyB2Y2MzdjBfc2Qgdm9sdGFnZSByZWd1bGF0b3IuCgpTZXQgdGhlIHVuZGVydm9sdGFnZSBwcm90
ZWN0aW9uIGxpbWl0IHRvIDIuN1YsIHdoaWNoIGlzIHRoZSBtaW5pbXVtCnBlcm1pc3NpYmxlIFNE
IGNhcmQgb3BlcmF0aW5nIHZvbHRhZ2UuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS29obHNj
aMO8dHRlciA8Y2hyaXN0aWFuQGtvaGxzY2h1dHRlci5jb20+Ci0tLQphcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzM5OS1uYW5vcGk0LmR0c2kgfCA0ICsrKysKMSBmaWxlIGNoYW5nZWQs
IDQgaW5zZXJ0aW9ucygrKQptb2RlIGNoYW5nZSAxMDA2NDQgPT4gMTAwNzU1IGFyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LW5hbm9waTQuZHRzaQoKZGlmZiAtLWdpdCBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LW5hbm9waTQuZHRzaSBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LW5hbm9waTQuZHRzaQpvbGQgbW9kZSAxMDA2NDQKbmV3
IG1vZGUgMTAwNzU1CmluZGV4IDhjMGZmNmM5NmUwMy4uNjY5Yzc0Y2U0ZDEzCi0tLSBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LW5hbm9waTQuZHRzaQorKysgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1uYW5vcGk0LmR0c2kKQEAgLTczLDYgKzczLDEw
IEBAIHZjYzN2MF9zZDogdmNjM3YwLXNkIHsKCQlyZWd1bGF0b3ItYWx3YXlzLW9uOwoJCXJlZ3Vs
YXRvci1taW4tbWljcm92b2x0ID0gPDMwMDAwMDA+OwoJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0
ID0gPDMwMDAwMDA+OworCisJCS8vIG11c3QgYmUgY29uZmlndXJlZCBvciBTRCBjYXJkIG1heSBm
YWlsIHRvIGluaXRpYWxpemUgb2NjYXNpb25hbGx5CisJCXJlZ3VsYXRvci11di1wcm90ZWN0aW9u
LW1pY3Jvdm9sdCA9IDwyNzAwMDAwPjsKKwoJCXJlZ3VsYXRvci1uYW1lID0gInZjYzN2MF9zZCI7
CgkJdmluLXN1cHBseSA9IDwmdmNjM3YzX3N5cz47Cgl9OwotLSAKMi4zNi4xCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
