Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECB6CC43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Jul 2022 20:52:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lwfMNuyJqdRYMgJ9ZB+MkKek6oCwl9HYmHkMlUNb2xE=; b=KL2QbHnxmPtzlH
	Fk6kvdclvKRSsg58ONazJdWRyA+eCkLOqBJRId/EPq1z88+H7Vuu3uOgystIxDSOPa9P39Tg/4ZH9
	IAByahPXxNbpF9tk6wkR4YdwZ9PAWip6JX6tQQFD2qhv2/ex2z74xaU3IIeaEH+rP8hqc1iMXEV+Z
	v0WyEo1TTNlJ/cXV2BJpC7Tm8erbBS0IOv60Ga+HRQ8BgVtzYaFjC1t0uZVdNmEw2riD7riOsCJZ7
	BGQs9gBuu8uSp08i3yORHtEPRkUmxNnIhbwEKbDGzSQZLqqLPJEEELJMiCL9WkXPAJcnQB3PhP0bQ
	M34686S55mpVbrsjruOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCSIB-00AIdX-Hc; Fri, 15 Jul 2022 20:52:07 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCSI8-00AIa2-1K
	for linux-rockchip@lists.infradead.org; Fri, 15 Jul 2022 20:52:05 +0000
Received: by mail-ej1-x62d.google.com with SMTP id j22so10989895ejs.2
        for <linux-rockchip@lists.infradead.org>; Fri, 15 Jul 2022 13:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kohlschutter-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=3Vcv+Zqcd+YiC3pv/6ZVpdeh0nqVlQ60ZrMu8iVPCE0=;
        b=hfpxKr79PIpiVKRB3kbWZcyibR5lAWIyCaYB6tIMOaKXIiUUN5eu2EiH5vEqDMrst1
         Smt2Kj8v1PmDvq8asPjO2YfgTbZ7sTMbghfSoW2v8jv9p1GdthIBCEJZpncO+tARqtkb
         DP1Nbp0R6UWAvkWgR66eR4osoAWPmmU/XreUBF3xzjKLPCpJaECgfaInsZOLVOIoXNZi
         Nxj4R/5uRV0cYoQjj3t56Zu2T97a17XYrvAe/2dqcfLDsk0kpBVEdbEpeBO3hynzrMok
         8FFV/GgATToM+BYaY4/KwerxRdz+ZObWPp6EooUnWXydrNx49HuGebWTsj7aFvkKkzKr
         DGXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=3Vcv+Zqcd+YiC3pv/6ZVpdeh0nqVlQ60ZrMu8iVPCE0=;
        b=E0Vrf+z5yYy5Hil5+Tjh3D9CEGDA9dRV6JXrFxJIc41PP+YVO0bVIWryG2+T2LnZTW
         LIdn1lgaFXvsVz1vciSXieRsPRi28DFKce1f6T/Jy7fLshgLNAbBloRT/8P1b0TX5xL3
         UBFA81qAHHpv6YI4d8nte8tx8J1tSwytlubYSZALQbHZy+anBB5XS2UZ+bzitWsHojiS
         9t/W5wDJl5jNkW78MCQtBBbeaGeqi79vClDECbK7VwaxMqkekGSra1bfQRdlSblcGkxP
         epZEvIEEHTR9c0RqdHwxoVijR3NyZUn1VJ+Qoq7cl4+8HQCV8rJFNb4JzwvrX+vQAk34
         va9w==
X-Gm-Message-State: AJIora8ba1jreWMRD5A0xx/D8ITP5QS+DrWXIfade0VnKXLjpzveGzGC
	YsKN4G3diTyxI9I2+6PzKIUu3w==
X-Google-Smtp-Source: AGRyM1sNJTmw5My6E+UIFPxEEm5NSizCZE5yfStZxt0SI6lvyujXMl0QKBnTWcpM2xTQKS+FnyDkGw==
X-Received: by 2002:a17:906:2086:b0:715:7983:a277 with SMTP id 6-20020a170906208600b007157983a277mr15317328ejq.386.1657918314254;
        Fri, 15 Jul 2022 13:51:54 -0700 (PDT)
Received: from smtpclient.apple (ip5b434222.dynamic.kabel-deutschland.de. [91.67.66.34])
        by smtp.gmail.com with ESMTPSA id wj18-20020a170907051200b0072af92fa086sm2401478ejb.32.2022.07.15.13.51.52
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Jul 2022 13:51:53 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
Subject: Re: [PATCH] regulator: core: Resolve supply name earlier to prevent
 double-init
From: =?utf-8?Q?Christian_Kohlsch=C3=BCtter?= <christian@kohlschutter.com>
In-Reply-To: <3B4AE882-0C28-41E3-9466-F8E301567627@kohlschutter.com>
Date: Fri, 15 Jul 2022 22:51:52 +0200
Cc: Robin Murphy <robin.murphy@arm.com>,
 wens@kernel.org,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Markus Reichl <m.reichl@fivetechno.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>
Message-Id: <DFF60E71-B8CF-43C9-B476-9216AFF0463B@kohlschutter.com>
References: <3B4AE882-0C28-41E3-9466-F8E301567627@kohlschutter.com>
To: Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
X-Mailer: Apple Mail (2.3696.100.31)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220715_135204_096802_1CEA6363 
X-CRM114-Status: GOOD (  26.29  )
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

SGkgYWxsLAoKVGhpcyBpcyBhIGZvbGxvdy11cCBwYXRjaCBmcm9tIG15IHBhdGNoIG9uIG1tYyBz
aWRlOgpbUEFUQ0ggdjRdIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBGaXggU0QgY2FyZCBpbml0IG9u
IHJrMzM5OS1uYW5vcGk0Cmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51
eC1yb2NrY2hpcC9wYXRjaC83M0Y5QUVEMC1EMkE4LTQyOTQtQjZFMS0xQjkyRDJBMzY1MjlAa29o
bHNjaHV0dGVyLmNvbS8KClRoYW5rcyB0byBSb2JpbiBNdXJwaHkncyBoZWxwLCB3ZSB3ZXJlIGFi
bGUgdG8gZmlndXJlIG91dCB0aGF0IG15IE5hbm9QSSBSNFMncyBTRC1DYXJkIHZvbHRhZ2UgcmVn
dWxhdG9yIHdhcyBpbml0aWFsaXplZCB0d2ljZSBhbmQgdGhhdCBhIHZvbHRhZ2UgZHJvcCB3YXMg
dGhlIHJlYXNvbiBmb3IgdGhlIGluaXRpYWxpemF0aW9uIGZhaWx1cmUuCkFkZGluZyBhbiBtZGVs
YXkgdG8gdGhlIGluaXQgY29kZSwgb3Ig4oCUIHN1cnByaXNpbmdseSDigJQgYWRkaW5nIGEgInJl
Z3VsYXRvci11di1wcm90ZWN0aW9uLW1pY3Jvdm9sdCIgZGVjbGFyYXRpb24gaGFkICJmaXhlZCIg
dGhlIGlzc3VlIGluIDk5LzEwMCB0cmllcy4KCkJlc3QsCkNocmlzdGlhbgoKZnJvbSBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1uYW5vcGk0LmR0c2k6CnZjYzN2MF9zZDogdmNj
M3YwLXNkIHsKICAgICAgICBjb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7CiAgICAgICAg
ZW5hYmxlLWFjdGl2ZS1oaWdoOwogICAgICAgIGdwaW8gPSA8JmdwaW8wIFJLX1BBMSBHUElPX0FD
VElWRV9ISUdIPjsKICAgICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwogICAgICAgIHBp
bmN0cmwtMCA9IDwmc2RtbWMwX3B3cl9oPjsKICAgICAgICByZWd1bGF0b3ItYWx3YXlzLW9uOwog
ICAgICAgIHJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDMwMDAwMDA+OwogICAgICAgIHJlZ3Vs
YXRvci1tYXgtbWljcm92b2x0ID0gPDMwMDAwMDA+OwogICAgICAgIHJlZ3VsYXRvci1uYW1lID0g
InZjYzN2MF9zZCI7CiAgICAgICAgdmluLXN1cHBseSA9IDwmdmNjM3YzX3N5cz47Cn07ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAoKPiBBbSAxNS4wNy4yMDIyIHVtIDIy
OjMyIHNjaHJpZWIgQ2hyaXN0aWFuIEtvaGxzY2jDvHR0ZXIgPGNocmlzdGlhbkBrb2hsc2NodXR0
ZXIuY29tPjoKPiAKPiBQcmV2aW91c2x5LCBhbiB1bnJlc29sdmVkIHJlZ3VsYXRvciBzdXBwbHkg
cmVmZXJlbmNlIHVwb24gY2FsbGluZwo+IHJlZ3VsYXRvcl9yZWdpc3RlciBvbiBhbiBhbHdheXMt
b24gb3IgYm9vdC1vbiByZWd1bGF0b3IgY2F1c2VkCj4gc2V0X21hY2hpbmVfY29uc3RyYWludHMg
dG8gYmUgY2FsbGVkIHR3aWNlLgo+IAo+IFRoaXMgaW4gdHVybiBtYXkgaW5pdGlhbGl6ZSB0aGUg
cmVndWxhdG9yIHR3aWNlLCBsZWFkaW5nIHRvIHZvbHRhZ2UKPiBnbGl0Y2hlcyB0aGF0IGFyZSB0
aW1pbmctZGVwZW5kZW50LiBBIHNpbXBsZSwgdW5yZWxhdGVkIGNvbmZpZ3VyYXRpb24KPiBjaGFu
Z2UgbWF5IGJlIGVub3VnaCB0byBoaWRlIHRoaXMgcHJvYmxlbSwgb25seSB0byBiZSBzdXJmYWNl
ZCBieQo+IGNoYW5jZS4KPiAKPiBPbmUgc3VjaCBleGFtcGxlIGlzIHRoZSBTRC1DYXJkIHZvbHRh
Z2UgcmVndWxhdG9yIGluIGEgTmFub1BJIFI0UyB0aGF0Cj4gd291bGQgbm90IGluaXRpYWxpemUg
cmVsaWFibHkgdW5sZXNzIHRoZSByZWdpc3RyYXRpb24gZmxvdyB3YXMganVzdAo+IGNvbXBsZXgg
ZW5vdWdoIHRvIGFsbG93IHRoZSByZWd1bGF0b3IgdG8gcHJvcGVybHkgcmVzZXQgYmV0d2VlbiBj
YWxscy4KPiAKPiBGaXggdGhpcyBieSByZS1hcnJhbmdpbmcgcmVndWxhdG9yX3JlZ2lzdGVyLCB0
cnlpbmcgcmVzb2x2ZSB0aGUKPiByZWd1bGF0b3IncyBzdXBwbHkgZWFybHkgZW5vdWdoIHRoYXQg
c2V0X21hY2hpbmVfY29uc3RyYWludHMgZG9lcyBub3QKPiBuZWVkIHRvIGJlIGNhbGxlZCB0d2lj
ZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS29obHNjaMO8dHRlciA8Y2hyaXN0aWFu
QGtvaGxzY2h1dHRlci5jb20+Cj4gLS0tCj4gZHJpdmVycy9yZWd1bGF0b3IvY29yZS5jIHwgNDIg
KysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLQo+IDEgZmlsZSBjaGFuZ2Vk
LCAyOCBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9yZWd1bGF0b3IvY29yZS5jIGIvZHJpdmVycy9yZWd1bGF0b3IvY29yZS5jCj4gaW5kZXgg
YzRkODQ0ZmZhZDdhLi43Mjg4NDA4MjdlOWMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9yZWd1bGF0
b3IvY29yZS5jCj4gKysrIGIvZHJpdmVycy9yZWd1bGF0b3IvY29yZS5jCj4gQEAgLTU0MzMsNyAr
NTQzMywzNCBAQCByZWd1bGF0b3JfcmVnaXN0ZXIoY29uc3Qgc3RydWN0IHJlZ3VsYXRvcl9kZXNj
ICpyZWd1bGF0b3JfZGVzYywKPiAJQkxPQ0tJTkdfSU5JVF9OT1RJRklFUl9IRUFEKCZyZGV2LT5u
b3RpZmllcik7Cj4gCUlOSVRfREVMQVlFRF9XT1JLKCZyZGV2LT5kaXNhYmxlX3dvcmssIHJlZ3Vs
YXRvcl9kaXNhYmxlX3dvcmspOwo+IAo+IC0JLyogcHJlZm9ybSBhbnkgcmVndWxhdG9yIHNwZWNp
ZmljIGluaXQgKi8KPiArCS8qIHNldCByZWd1bGF0b3IgY29uc3RyYWludHMgKi8KPiArCWlmIChp
bml0X2RhdGEpCj4gKwkJcmRldi0+Y29uc3RyYWludHMgPSBrbWVtZHVwKCZpbml0X2RhdGEtPmNv
bnN0cmFpbnRzLAo+ICsJCQkJCSAgICBzaXplb2YoKnJkZXYtPmNvbnN0cmFpbnRzKSwKPiArCQkJ
CQkgICAgR0ZQX0tFUk5FTCk7Cj4gKwllbHNlCj4gKwkJcmRldi0+Y29uc3RyYWludHMgPSBremFs
bG9jKHNpemVvZigqcmRldi0+Y29uc3RyYWludHMpLAo+ICsJCQkJCSAgICBHRlBfS0VSTkVMKTsK
PiArCj4gKwlpZiAoaW5pdF9kYXRhICYmIGluaXRfZGF0YS0+c3VwcGx5X3JlZ3VsYXRvcikKPiAr
CQlyZGV2LT5zdXBwbHlfbmFtZSA9IGluaXRfZGF0YS0+c3VwcGx5X3JlZ3VsYXRvcjsKPiArCWVs
c2UgaWYgKHJlZ3VsYXRvcl9kZXNjLT5zdXBwbHlfbmFtZSkKPiArCQlyZGV2LT5zdXBwbHlfbmFt
ZSA9IHJlZ3VsYXRvcl9kZXNjLT5zdXBwbHlfbmFtZTsKPiArCj4gKwlpZiAoKHJkZXYtPnN1cHBs
eV9uYW1lICYmICFyZGV2LT5zdXBwbHkpICYmIHJkZXYtPmNvbnN0cmFpbnRzCj4gKwkJJiYgKHJk
ZXYtPmNvbnN0cmFpbnRzLT5hbHdheXNfb24gfHwgcmRldi0+Y29uc3RyYWludHMtPmJvb3Rfb24p
KSB7Cj4gKwkJLyogVHJ5IHRvIHJlc29sdmUgdGhlIG5hbWUgb2YgdGhlIHN1cHBseWluZyByZWd1
bGF0b3IgaGVyZSBmaXJzdAo+ICsJCSAqIHNvIHdlIHByZXZlbnQgZG91YmxlLWluaXRpYWxpemlu
ZyB0aGUgcmVndWxhdG9yLCB3aGljaCBtYXkKPiArCQkgKiBjYXVzZSB0aW1pbmctc3BlY2lmaWMg
dm9sdGFnZSBicm93bm91dHMvZ2xpdGNoZXMgdGhhdCBhcmUKPiArCQkgKiBoYXJkIHRvIGRlYnVn
Lgo+ICsJCSAqLwo+ICsJCXJldCA9IHJlZ3VsYXRvcl9yZXNvbHZlX3N1cHBseShyZGV2KTsKPiAr
CQlpZiAocmV0KQo+ICsJCQlyZGV2X2RiZyhyZGV2LCAidW5hYmxlIHRvIHJlc29sdmUgc3VwcGx5
IGVhcmx5OiAlcGVcbiIsCj4gKwkJCQkJIEVSUl9QVFIocmV0KSk7Cj4gKwl9Cj4gKwo+ICsJLyog
cGVyZm9ybSBhbnkgcmVndWxhdG9yIHNwZWNpZmljIGluaXQgKi8KPiAJaWYgKGluaXRfZGF0YSAm
JiBpbml0X2RhdGEtPnJlZ3VsYXRvcl9pbml0KSB7Cj4gCQlyZXQgPSBpbml0X2RhdGEtPnJlZ3Vs
YXRvcl9pbml0KHJkZXYtPnJlZ19kYXRhKTsKPiAJCWlmIChyZXQgPCAwKQo+IEBAIC01NDU5LDI0
ICs1NDg2LDExIEBAIHJlZ3VsYXRvcl9yZWdpc3Rlcihjb25zdCBzdHJ1Y3QgcmVndWxhdG9yX2Rl
c2MgKnJlZ3VsYXRvcl9kZXNjLAo+IAkJICAgICh1bnNpZ25lZCBsb25nKSBhdG9taWNfaW5jX3Jl
dHVybigmcmVndWxhdG9yX25vKSk7Cj4gCWRldl9zZXRfZHJ2ZGF0YSgmcmRldi0+ZGV2LCByZGV2
KTsKPiAKPiAtCS8qIHNldCByZWd1bGF0b3IgY29uc3RyYWludHMgKi8KPiAtCWlmIChpbml0X2Rh
dGEpCj4gLQkJcmRldi0+Y29uc3RyYWludHMgPSBrbWVtZHVwKCZpbml0X2RhdGEtPmNvbnN0cmFp
bnRzLAo+IC0JCQkJCSAgICBzaXplb2YoKnJkZXYtPmNvbnN0cmFpbnRzKSwKPiAtCQkJCQkgICAg
R0ZQX0tFUk5FTCk7Cj4gLQllbHNlCj4gLQkJcmRldi0+Y29uc3RyYWludHMgPSBremFsbG9jKHNp
emVvZigqcmRldi0+Y29uc3RyYWludHMpLAo+IC0JCQkJCSAgICBHRlBfS0VSTkVMKTsKPiAJaWYg
KCFyZGV2LT5jb25zdHJhaW50cykgewo+IAkJcmV0ID0gLUVOT01FTTsKPiAJCWdvdG8gd2FzaDsK
PiAJfQo+IAo+IC0JaWYgKGluaXRfZGF0YSAmJiBpbml0X2RhdGEtPnN1cHBseV9yZWd1bGF0b3Ip
Cj4gLQkJcmRldi0+c3VwcGx5X25hbWUgPSBpbml0X2RhdGEtPnN1cHBseV9yZWd1bGF0b3I7Cj4g
LQllbHNlIGlmIChyZWd1bGF0b3JfZGVzYy0+c3VwcGx5X25hbWUpCj4gLQkJcmRldi0+c3VwcGx5
X25hbWUgPSByZWd1bGF0b3JfZGVzYy0+c3VwcGx5X25hbWU7Cj4gLQo+IAlyZXQgPSBzZXRfbWFj
aGluZV9jb25zdHJhaW50cyhyZGV2KTsKPiAJaWYgKHJldCA9PSAtRVBST0JFX0RFRkVSKSB7Cj4g
CQkvKiBSZWd1bGF0b3IgbWlnaHQgYmUgaW4gYnlwYXNzIG1vZGUgYW5kIHNvIG5lZWRzIGl0cyBz
dXBwbHkKPiAtLSAKPiAyLjM2LjEKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
