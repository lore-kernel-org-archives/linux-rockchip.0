Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 863F8EB64DA
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Jul 2023 04:35:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AgSphXPJmQc2flr+lIfunzq6NbONjyA3PrtJiamdxuQ=; b=I4XtBsafGIXLmo
	UrTbJ95c/bUiGsdsWjaQp1xtWVOfKSIdXuxdGamSuvO8XtC0l8/sF62Hqv9H44PNP8t+L/BerHLWF
	FkHZsXQgZR0T7aHNi8R2LnrbcrCUs5NrFLwBvNZBi1BdcffgFmKO5ECxWl55puLT8EiUqRWuCBnHx
	y1LNIe1pq+Uu0rLs0fK5lHhQnCmWI3NAH1uj/+kS/QF9exshf5Pd57NwKbzBjQTadK4MbTkne9OdA
	rbAbOv/nM0wEcYks6QOqHlJUlc2ZUE0eTKHShsjdhTvgDyvvVUo/rCQhqg0l5bhaWMA3D9nu6FFXG
	IJSNk+2BvifgxFH/2q0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qKtTk-00A3vb-0m;
	Sun, 16 Jul 2023 04:35:28 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qKtTg-00A3uO-1Y;
	Sun, 16 Jul 2023 04:35:26 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-3fbc656873eso33786195e9.1;
        Sat, 15 Jul 2023 21:35:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689482122; x=1692074122;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=s3jhynkIkZ/R+qQ9ccgb7cwbFAaFE+KWXgNiWgMBNQY=;
        b=nOk2TFY+kbalJ/2POSzzHW8JXxJCgPL1j1IcojrnX6yrft8z1HqINsymRFNaVhgQ4W
         jdQ6amvc9CSIzqU824BUc/PaqE3SQuKLNyu58km/qCJBYBilbvHz0qyOXDIoPJ4Itw98
         WWCJaVOK9f3vMU/fOyxBGH0KUb1E8SZw/UiDWD5wNyK5l4Si5DWOyqy+j+8ZLUj3lXXw
         UBMciRSnZWmqI198x9YYeG9N1E4iOXFF4Nn571j3v3z1wpQOgnXR+asVpb+/j89LDBiF
         lALZ6dbqJxR1y1LIMiTlnK77J1HyAt1PAUzE43V9bapHRqwU/J6vpT97aVMZvSy3/ElC
         lGcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689482122; x=1692074122;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=s3jhynkIkZ/R+qQ9ccgb7cwbFAaFE+KWXgNiWgMBNQY=;
        b=JiNDlVsUakFlV9Ue0CcYOt7QmXpNKIiguf5hbWHwz0AMU7JtoSVDWnrtRSfmwQi5/0
         q4XQ6QIX1zRfecfaIRpCBjxb8AMi3TYuyTiumFYB6PjRDwpmxkhND+zrhueLWYfOLC94
         4zvPZXDCYiO8cbVBv7oxJQKqx0KKq453ymGt2wGGCNjxyIaC9A/OcQtiylmZYcVG92u9
         8uF1THTdTCBcv4+aJ37cvXpFySBWHBngg1yA0QtrRb2sydxiK1L/LjDlpESzjZWKqnAP
         OjSSMZSsSGh+U7NktqSPoD1NZwhHCukyMBX1fKvf2y+CpKtKl9haA8W1llbentC87+Gd
         kt5Q==
X-Gm-Message-State: ABy/qLaCTflHsVa5kQLs1ByVu43fbexndTYm44WPS6AWcBwFW24wxTBz
	eW202v8KYKadwHc9ZbhUEXw=
X-Google-Smtp-Source: APBJJlHbV77h1cKA+TPlQwums4kjKJbzg5j0wKxqf6hmxcAwYnnU791cVylMszznI4WEoObjnWYtcg==
X-Received: by 2002:a5d:664b:0:b0:314:3344:326b with SMTP id f11-20020a5d664b000000b003143344326bmr7730152wrw.71.1689482121824;
        Sat, 15 Jul 2023 21:35:21 -0700 (PDT)
Received: from hermes.prahal.homelinux.net (91-175-163-178.subs.proxad.net. [91.175.163.178])
        by smtp.gmail.com with ESMTPSA id j18-20020a5d4492000000b00315a1c160casm15359983wrq.99.2023.07.15.21.35.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Jul 2023 21:35:20 -0700 (PDT)
Message-ID: <d50ba126af53da17fbf55ab0ed3a0058c66055ef.camel@gmail.com>
Subject: Re: [PATCH v1 1/2] arm64: dts: rockchip: Disable HS400 for eMMC on
 ROCK Pi 4
From: Alban Browaeys <alban.browaeys@gmail.com>
To: Christopher Obbard <chris.obbard@collabora.com>, 
	linux-rockchip@lists.infradead.org
Cc: kernel@collabora.com, Akash Gajjar <Akash_Gajjar@mentor.com>, Conor
 Dooley <conor+dt@kernel.org>, FUKAUMI Naoki <naoki@radxa.com>, Heiko
 Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Pragnesh Patel
 <Pragnesh_Patel@mentor.com>,  Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, FolkerSchwesinger <dev@folker-schwesinger.de>
Date: Sun, 16 Jul 2023 06:35:19 +0200
In-Reply-To: <20230705144255.115299-2-chris.obbard@collabora.com>
References: <20230705144255.115299-1-chris.obbard@collabora.com>
	 <20230705144255.115299-2-chris.obbard@collabora.com>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230715_213524_590045_92C26CC1 
X-CRM114-Status: GOOD (  27.61  )
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

TGUgbWVyY3JlZGkgMDUganVpbGxldCAyMDIzIMOgIDE1OjQyICswMTAwLCBDaHJpc3RvcGhlciBP
YmJhcmQgYSDDqWNyaXTCoDoKPiA+ID4gPiBUaGVyZSBpcyBzb21lIGluc3RhYmxpdHkgd2l0aCBz
b21lIGVNTUMgbW9kdWxlcyBvbiBST0NLIFBpIDQKPiA+ID4gPiBTQkNzCj4gPiA+ID4gcnVubmlu
Zwo+ID4gPiA+IGluIEhTNDAwIG1vZGUuIFRoaXMgZW5kcyB1cCByZXN1bHRpbmcgaW4gc29tZSBi
bG9jayBlcnJvcnMKPiA+ID4gPiBhZnRlciBhCj4gPiA+ID4gd2hpbGUKPiA+ID4gPiBvciBhZnRl
ciBhICJoZWF2eSIgb3BlcmF0aW9uIHV0aWxpc2luZyB0aGUgZU1NQyAoZS5nLiByZXNpemluZwo+
ID4gPiA+IGEKPiA+ID4gPiBmaWxlc3lzdGVtKS4gQW4gZXhhbXBsZSBvZiB0aGVzZSBlcnJvcnMg
aXMgYXMgZm9sbG93czoKCkkgZGlkIG5vdCByZXBvcnQgbXkgZmluZGluZyB0byB0aGUgTGludXgg
dXBzdHJlYW0gYmFjayB0aGVuIChkdWUgdG8KdXNpbmcgYSBub24gdmFuaWxsYSBMaW51eCBrZXJu
ZWwpIGJ1dCB3aXRoIG15IEFybWJpYW4gaW5zdGFsbCBJIGhhZApiaXNlY3RlZCB0aGlzIGlzc3Vl
IHRvIDA2NjUzZWJjMGFkMmUwYjdkNzk5Y2Q3MWE1YzI5MzNlZDJmYjdhNjYgYXMgdGhlCmZpcnN0
IGJhZCBjb21taXQuCkkgYmVsaWV2ZSBpdCB3YXMgcmVsZWFzZWQgaW4gNS4xMC42MCAodGhlIGZp
cnN0IGJyb2tlbiB2ZXJzaW9uIHRvIHJlYWNoCmFybWJpYW4gd2FzIDUuMTAuNjMgZnJvbSBhIHdv
cmtpbmcgNS4xMC40My4KU2luY2UgdGhlbiBhbGwgcmszMzk5IEkgaGF2ZSBjaGVja2VkIGhhdmUg
ZGlzYWJsZWQgaHM0MDAgKGRvd24gdG8gaHMyMDAKd2hpY2ggaXMgc3RhYmxlIGV2ZW4gd2l0aCB0
aGUgYWJvdmUgY29tbWl0cykuCgpjb21taXQgMDY2NTNlYmMwYWQyZTBiN2Q3OTljZDcxYTVjMjkz
M2VkMmZiN2E2NgpBdXRob3I6IERtaXRyeSBCYXJ5c2hrb3YgPGRtaXRyeS5iYXJ5c2hrb3ZAbGlu
YXJvLm9yZz4KRGF0ZTogICBUaHUgTWF5IDIwIDAxOjEyOjIzIDIwMjEgKzAzMDAKCiAgICByZWd1
bGF0b3I6IGNvcmU6IHJlc29sdmUgc3VwcGx5IGZvciBib290LW9uL2Fsd2F5cy1vbiByZWd1bGF0
b3JzCiAgICAKICAgIGNvbW1pdCA5OGU0OGNkOTI4M2RiYWMwZTE0NDVlZTc4MDg4OWYxMGIzZDFk
YjZhIHVwc3RyZWFtLgogICAgCiAgICBGb3IgdGhlIGJvb3Qtb24vYWx3YXlzLW9uIHJlZ3VsYXRv
cnMgdGhlIHNldF9tYWNoaW5lX2NvbnN0cmFpbnN0KCkgaXMKICAgIGNhbGxlZCBiZWZvcmUgcmVz
b2x2aW5nIHJkZXYtPnN1cHBseS4gVGh1cyB0aGUgY29kZSB3b3VsZCB0cnkgdG8gZW5hYmxlCiAg
ICByZGV2IGJlZm9yZSBlbmFibGluZyBzdXBwbHlpbmcgcmVndWxhdG9yLiBFbmZvcmNlIHJlc29s
dmluZyBzdXBwbHkKICAgIHJlZ3VsYXRvciBiZWZvcmUgZW5hYmxpbmcgcmRldi4KICAgIAogICAg
Rml4ZXM6IGFlYTZjYjk5NzAzZSAoInJlZ3VsYXRvcjogcmVzb2x2ZSBzdXBwbHkgYWZ0ZXIgY3Jl
YXRpbmcgcmVndWxhdG9yIikKICAgIFNpZ25lZC1vZmYtYnk6IERtaXRyeSBCYXJ5c2hrb3YgPGRt
aXRyeS5iYXJ5c2hrb3ZAbGluYXJvLm9yZz4KICAgIExpbms6IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL3IvMjAyMTA1MTkyMjEyMjQuMjg2ODQ5Ni0xLWRtaXRyeS5iYXJ5c2hrb3ZAbGluYXJvLm9y
ZwogICAgU2lnbmVkLW9mZi1ieTogTWFyayBCcm93biA8YnJvb25pZUBrZXJuZWwub3JnPgogICAg
U2lnbmVkLW9mZi1ieTogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9u
Lm9yZz4KCiBkcml2ZXJzL3JlZ3VsYXRvci9jb3JlLmMgfCA2ICsrKysrKwogMSBmaWxlIGNoYW5n
ZWQsIDYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcmVndWxhdG9yL2NvcmUu
YyBiL2RyaXZlcnMvcmVndWxhdG9yL2NvcmUuYwppbmRleCBmMTkyYmYxOTQ5MmVkLi5lMjBlNzdl
NGMxNTlkIDEwMDY0NAotLS0gYS9kcml2ZXJzL3JlZ3VsYXRvci9jb3JlLmMKKysrIGIvZHJpdmVy
cy9yZWd1bGF0b3IvY29yZS5jCkBAIC0xNDI1LDYgKzE0MjUsMTIgQEAgc3RhdGljIGludCBzZXRf
bWFjaGluZV9jb25zdHJhaW50cyhzdHJ1Y3QgcmVndWxhdG9yX2RldiAqcmRldikKIAkgKiBhbmQg
d2UgaGF2ZSBjb250cm9sIHRoZW4gbWFrZSBzdXJlIGl0IGlzIGVuYWJsZWQuCiAJICovCiAJaWYg
KHJkZXYtPmNvbnN0cmFpbnRzLT5hbHdheXNfb24gfHwgcmRldi0+Y29uc3RyYWludHMtPmJvb3Rf
b24pIHsKKwkJLyogSWYgd2Ugd2FudCB0byBlbmFibGUgdGhpcyByZWd1bGF0b3IsIG1ha2Ugc3Vy
ZSB0aGF0IHdlIGtub3cKKwkJICogdGhlIHN1cHBseWluZyByZWd1bGF0b3IuCisJCSAqLworCQlp
ZiAocmRldi0+c3VwcGx5X25hbWUgJiYgIXJkZXYtPnN1cHBseSkKKwkJCXJldHVybiAtRVBST0JF
X0RFRkVSOworCiAJCWlmIChyZGV2LT5zdXBwbHkpIHsKIAkJCXJldCA9IHJlZ3VsYXRvcl9lbmFi
bGUocmRldi0+c3VwcGx5KTsKIAkJCWlmIChyZXQgPCAwKSB7CgoKTXkgZmluZGluZ3MgaGVyZToK
aHR0cHM6Ly9mb3J1bS5hcm1iaWFuLmNvbS90b3BpYy8xODg1NS11cGdyYWRpbmctdG8tYnVsbHNl
eWUtdHJvdWJsZXNob290aW5nLWFybWJpYW4tMjEwODEvP2RvPWZpbmRDb21tZW50JmNvbW1lbnQ9
MTI4NzkzCnRoaXMgb24gYSBrb2JvbCBoZWxpb3M2NCByazMzOTkgYm9hcmQuCgpJIHRvbGQgYSB1
c2VyIHRvIHRyeSB0aGlzIGZpeCAocmV2ZXJ0IGNvbW1pdHMgMDY2NTNlYmMwYWQyZTBiN2Q3OTlj
ZDcxYTVjMjkzM2VkMmZiN2E2NgogYW5kIGFlYTZjYjk5NzAzZTE3MDE5ZTAyNWFhNzE2NDNiNGQz
ZTBhMjQ0MTMpIGFsc28gZm9yIGFuIGFybWJpYW4ga2VybmVsIG9uIGEgIE5hbm9wYy1UNAogYW5k
IGl0IGZpeGVzIHRoZSBpc3N1ZcKgaHR0cHM6Ly9mb3J1bS5hcm1iaWFuLmNvbS90b3BpYy8yMDAw
Mi1uYW5vcGMtdDQtbmV3LWtlcm5lbC0yMjAyLWdlbmVyYXRlcy1pc3N1ZXMtb24tbW1jMi1hbmQt
bWFrZXMtc3lzdGVtLW5vdC1wcm9wZXJseS13b3JraW5nLz9kbz1maW5kQ29tbWVudCZjb21tZW50
PTEzODA1MgpUaGlzIGFib3ZlIDUuMTYuOC4KCgoKCgpJIGhhZCBoaWdoIGV4cGVjdGF0aW9ucyB0
aGF0IHRoZSBjb21taXQgdGhhdCBmaXhlZCBkb3VibGUgaW5pdCB3b3VsZCBmaXggdGhlIGlzc3Vl
IGZvciBnb29kLCBidXQgc2FkbHkgbm90LgpJIGJlbGlldmUgdGhpcyB3b3VsZCBoYXZlIGJlZW4g
dGhlIG9ubHkgcmVxdWlyZWQgZml4IGZvciA1LjE2IGtlcm5lbHMgYnV0IG5vd2FkYXlzIGl0IGlz
IG5vdCBlbm91Z2ggYSByZXZlcnQuCgpodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGlu
dXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvY29tbWl0L2RyaXZlcnMvcmVndWxhdG9y
L2NvcmUuYz9pZD04YTg2NmQ1MjdhYzA0NDFjMGViMTRhOTkxZmExMTM1OGI0NzZiMTFkCgpyZWd1
bGF0b3I6IGNvcmU6IFJlc29sdmUgc3VwcGx5IG5hbWUgZWFybGllciB0byBwcmV2ZW50IGRvdWJs
ZS1pbml0ClByZXZpb3VzbHksIGFuIHVucmVzb2x2ZWQgcmVndWxhdG9yIHN1cHBseSByZWZlcmVu
Y2UgdXBvbiBjYWxsaW5nCnJlZ3VsYXRvcl9yZWdpc3RlciBvbiBhbiBhbHdheXMtb24gb3IgYm9v
dC1vbiByZWd1bGF0b3IgY2F1c2VkCnNldF9tYWNoaW5lX2NvbnN0cmFpbnRzIHRvIGJlIGNhbGxl
ZCB0d2ljZS4KClRoaXMgaW4gdHVybiBtYXkgaW5pdGlhbGl6ZSB0aGUgcmVndWxhdG9yIHR3aWNl
LCBsZWFkaW5nIHRvIHZvbHRhZ2UKZ2xpdGNoZXMgdGhhdCBhcmUgdGltaW5nLWRlcGVuZGVudC4g
QSBzaW1wbGUsIHVucmVsYXRlZCBjb25maWd1cmF0aW9uCmNoYW5nZSBtYXkgYmUgZW5vdWdoIHRv
IGhpZGUgdGhpcyBwcm9ibGVtLCBvbmx5IHRvIGJlIHN1cmZhY2VkIGJ5CmNoYW5jZS4KCk9uZSBz
dWNoIGV4YW1wbGUgaXMgdGhlIFNELUNhcmQgdm9sdGFnZSByZWd1bGF0b3IgaW4gYSBOYW5vUEkg
UjRTIHRoYXQKd291bGQgbm90IGluaXRpYWxpemUgcmVsaWFibHkgdW5sZXNzIHRoZSByZWdpc3Ry
YXRpb24gZmxvdyB3YXMganVzdApjb21wbGV4IGVub3VnaCB0byBhbGxvdyB0aGUgcmVndWxhdG9y
IHRvIHByb3Blcmx5IHJlc2V0IGJldHdlZW4gY2FsbHMuCgpGaXggdGhpcyBieSByZS1hcnJhbmdp
bmcgcmVndWxhdG9yX3JlZ2lzdGVyLCB0cnlpbmcgcmVzb2x2ZSB0aGUKcmVndWxhdG9yJ3Mgc3Vw
cGx5IGVhcmx5IGVub3VnaCB0aGF0IHNldF9tYWNoaW5lX2NvbnN0cmFpbnRzIGRvZXMgbm90Cm5l
ZWQgdG8gYmUgY2FsbGVkIHR3aWNlLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEtvaGxzY2h1
zIh0dGVyIDxjaHJpc3RpYW5Aa29obHNjaHV0dGVyLmNvbT4KTGluazogaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvci8yMDIyMDgxODEyNDY0Ni42MDA1LTEtY2hyaXN0aWFuQGtvaGxzY2h1dHRlci5j
b20KU2lnbmVkLW9mZi1ieTogTWFyayBCcm93biA8YnJvb25pZUBrZXJuZWwub3JnPgoiCnN0b3J5
IGJlaGluZyB0aGlzIHBhdGNoIGh0dHBzOi8va29obHNjaHVldHRlci5naXRodWIuaW8vYmxvZy9w
b3N0cy8yMDIyLzEwLzI4L2xpbnV4LW5hbm9waS1yNHMvCgpJdCBzaG91bGQgaGF2ZSB3b3JrZWQg
YmVjYXVzZSBiYXNpY2FsbHkgdGhpcyBwYXRjaCBpcyBhIHJldmVydCBvZgpjb21taXQgYWVhNmNi
OTk3MDNlMTcwMTllMDI1YWE3MTY0M2I0ZDNlMGEyNDQxMyAicmVndWxhdG9yOiByZXNvbHZlCnN1
cHBseSBhZnRlciBjcmVhdGluZyByZWd1bGF0b3IiIGV4Y2VwdCBpdCBrZWVwIHdoYXQgSSBiZWxp
ZXZlIGlzIG5vdwpkZWFkIGNvZGUgKGllIHRoZSBzZWNvbmQgc2V0X21hY2hpbmVfY29uc3RhaW5z
IGluICJpZiAocmV0ID09IC0KRVBST0JFX0RFRkVSKSAiIGlzIG9mIG5vIHVzZSBub3cgdGhhdCB0
aGUgcmVndWxhdG9yIHN1cHBseSBpcyByZXNvbHZlZApiZWZvcmUgdGhlIGZpcnN0IHNldF9tYWNo
aW5lX2NvbnN0cmFpbnRzIGNhbGwgaW4gcmVnaWxhdG9yX3JlZ2lzdGVycy4KVGhlIG9ubHkgY29k
ZSBsZWZ0IGZyb20gdGhlIDUuMTAuNjAgYnJlYWthZ2UgaXMgdGhlIEVQUk9CRV9ERUZFUiBpZgpy
ZWd1bGF0b3Igc3VwcGx5IGlzIG5vdCByZWdpc3RlcmVkIGluIHNldF9tYWNoaW5lX2NvbnN0cmFp
bnMuCkJ1dCBldmVuIGFmdGVyIHJlbW92aW5nIHRoaXMgbGVmdG92ZXIgYW5kIHRoZSBuZXcgRVBS
T0JFX0RFRkVSIHRoYXQgd2FzCmFkZGVkIHRvIHNldF9tYWNoaW5lX2NvbnN0cmFpbnRzIGZvciAi
cmVndWxhdG9yIHRoYXQgaGF2ZSBubyBkaXJlY3QKY29udHJvbCIsIEkgY2Fubm90IGdldCByaWQg
b2YgdGhlIEZpbGVzeXN0ZW0gY29ycnVwdGlvbiBhbmQgZXJyb3JzIHdpdGgKaHM0MDAgd2l0aCA2
LjMuCgpTdGlsbCBJIGhhdmUgbm8gY2x1ZSB3aHkgZW1tYyByZWd1bGF0b3JzIGRvdWJsZSBpbml0
IGlzIGZpbmUgb24gbW9zdApTb0MgYnV0IG5vdCByazMzOTkuCgoKQ2hlZXJzLApBbGJhbgoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
