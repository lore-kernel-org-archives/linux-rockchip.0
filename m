Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26D55C4708A
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Apr 2022 09:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IRkXhJpuUgPDgtYoLYCMbbXlmfnghQ2ivSL2yHCA2xQ=; b=lezj54ZZ485N4r
	yyf8zFuTo8Kpr+pMTAmHs3DQVzuu6NFH/EA5E9RDgvs80lJ7C7ENKUx9ACrpmUfmpTQP0Y46uCZ8F
	eVXla0F1P2D81ZCdD6JcHGJzA2ymmylTy3xTGxsH+fmTuKvWzOXZ/34uHvSvA81UVezGHqO0finSc
	D5zz0RO6nYukTS+v4wBeMyFjUEKB9/PBsyY+YzRWb9ly0NhdbUJVyuoh+oMkgjyraLM+gJLc5EUF/
	zv4YtIVD/7u5jNBvESmTwn44oU8SCc+M/lum3D1ycg4B6dzaFGfhfsPE/cKwN0nF6iAvZhLMisfuy
	y+CfzhHojur5+w5/xMwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neCot-00Cuuk-3K; Tue, 12 Apr 2022 09:28:19 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neCoh-00Curt-2x; Tue, 12 Apr 2022 09:28:08 +0000
Received: by mail-lj1-x230.google.com with SMTP id r18so7643515ljp.0;
 Tue, 12 Apr 2022 02:28:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=turZnB5n/CzolNSuA1M6dvnR84HpAEYW+xCag97801o=;
 b=LLpP//XqcCWJbA7PKJ/iNKGZM7a/+mCZCyu/q5r/dhGWNinAOtWglqZZw4AmZ4v16n
 tD4SZ/IjuZK7eUKTVDLQeH3BCO5njAy7Hvy8BN51ygyDVOxaX1P90IyzZVlMxvgCEvMV
 H0lc6FnP98SA6xfTlopEbcdxWwQ6lb86w0+NqyPkeJfiXenhix3ZhgR8fABWpeWKuLR+
 8BJSLY/CQantZvQqTVlLrmpGSwVc/V6yqVpzLv2fzAWxK2KACSr363O7J+VFAIqVtM/K
 yEFBQ49PnSJgQuj9wseT7qD6eX0PTfWWR02dBNugGi18ClGko/syLvbnjx/p89gnUaU0
 wQ0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=turZnB5n/CzolNSuA1M6dvnR84HpAEYW+xCag97801o=;
 b=QvDmMIWjDXNieSRt34G7DdVM4cthv3yvN+tsXi3fojhfSh1KTd+/SAKPryoSfz8wUt
 hCOjmslRd5kHh9YJOchjup/iFxZ83aZUO0l0YyTMyq8rSM1RknShGdWoTGkBD927uOWO
 WqlX22l4r0ogIpOlHJeI95gr58Fj1Vn14JS7F/msvo/Kz0Ro4nG0i80/5wmHBB9tQcEJ
 El0EMWWpbbpniTOUxOuif6/KpRe5ouHUbOjRZDf4NsvA9f38G0IMOgbpk1U+0v/QjtDA
 jDNQx2aLXA4rxa+AMxMCr0U/87M/yT6sPRYWCKbzTpu6/l7nkVlpdjKPwZkZeOrW5d9g
 /XlA==
X-Gm-Message-State: AOAM533avYe0U+9PnoTAUHSlT6rZaUspD41j/4rNExpkKcR5Lvtd5cSM
 y9okQ5OtqA3miuNaVE1D7lD9ZYzQEBg=
X-Google-Smtp-Source: ABdhPJzmTly0C01dv1dnFZBkivb7+onAaRQNmLX6/Q6cwjdDqEB6rqDUmd6996XnBZPaUD96eXGIQA==
X-Received: by 2002:a05:651c:17a1:b0:247:dc02:69b9 with SMTP id
 bn33-20020a05651c17a100b00247dc0269b9mr22661983ljb.437.1649755684369; 
 Tue, 12 Apr 2022 02:28:04 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl.
 [31.178.191.245]) by smtp.gmail.com with ESMTPSA id
 m8-20020a2e9348000000b0024b47e7dda5sm1457065ljh.65.2022.04.12.02.28.02
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 Apr 2022 02:28:03 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20220412075034.GS4012@pengutronix.de>
Date: Tue, 12 Apr 2022 11:28:01 +0200
Cc: dri-devel@lists.freedesktop.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Lucas Stach <lst@pengutronix.de>
Message-Id: <006DD91F-E4D2-4A45-80BC-5B38A4FEBF0A@gmail.com>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220401125205.GL4012@pengutronix.de>
 <5420D26D-34FD-4637-B602-F6271E38BB8D@gmail.com>
 <BA4C591F-D115-43D2-BF59-A75B29889E50@gmail.com>
 <20220408080748.GA2387@pengutronix.de> <20220408120021.GO4012@pengutronix.de>
 <B3E76A7A-9B62-4E6F-9472-00B6298689C5@gmail.com>
 <20220411090800.GR4012@pengutronix.de>
 <5929E7A7-776E-4BCB-92C8-A1CE05774FE3@gmail.com>
 <20220412075034.GS4012@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220412_022807_169479_AFD435B2 
X-CRM114-Status: GOOD (  26.07  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5n
dXRyb25peC5kZT4gdyBkbml1IDEyLjA0LjIwMjIsIG8gZ29kei4gMDk6NTA6Cj4gCj4gCj4gU29t
ZWhvdyBuZWdvdGlhdGlvbiBvZiB0aGUgZm9ybWF0IGdvZXMgd3JvbmcuIEFwcGxpY2F0aW9ucyBz
aG91bGRuJ3QKPiBwaWNrIHRoZXNlIGZvcm1hdHMgd2hlbiB0aGUgR1BVIGlzIHVzZWQgZm9yIHJl
bmRlcmluZy4gSSBkb24ndCBrbm93IGhvdwo+IGFuZCB3aGVyZSB0aGlzIHNob3VsZCBiZSBmaXhl
ZCBwcm9wZXJseSwgYnV0IHlvdXIgYXBwbGljYXRpb24gc2hvdWxkIHVzZQo+IERSTV9GT1JNQVRf
QUJHUjg4ODggYWthIEFCMjQgYWthIFBJUEVfRk9STUFUX1I4RzhCOEE4X1VOT1JNIGluc3RlYWQg
b2YKPiBEUk1fRk9STUFUX0FSR0I4ODg4IGFrYSBBUjI0IGFrYSBQSVBFX0ZPUk1BVF9COEc4UjhB
OF9VTk9STS4KPiAKQXBwbGllZCA6LSkKUmVzdWx0czogcGxzIHNlZSBiZWxvdwoKPiBDb3VsZCB5
b3UgdHJ5IHRoZSBmb2xsb3dpbmcgcGF0Y2g/IEl0IHJlbW92ZWQgdGhlIGZvcm1hdHMgaW4gcXVl
c3Rpb24KPiBmcm9tIHRoZSBsaXN0IG9mIHN1cHBvcnRlZCBmb3JtYXRzIGluIHRoZSBob3BlIHRo
YXQgeW91ciBhcHBsaWNhdGlvbgo+IHRoZW4gcGlja3Mgb25lIG9mIHRoZSBzdXBwb3J0ZWQgZm9y
bWF0cy4KPiAKPiBTYXNjaGEKPiAKPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTg8LS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAKPiBGcm9tIDc0MjcxMDljZmQxNjgwMzkwMmI1NWNkNTUz
NmI5MjEyYWJkMDk2NjUgTW9uIFNlcCAxNyAwMDowMDowMCAyMDAxCj4gRnJvbTogU2FzY2hhIEhh
dWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPgo+IERhdGU6IFR1ZSwgMTIgQXByIDIwMjIgMDk6
NDI6MzIgKzAyMDAKPiBTdWJqZWN0OiBbUEFUQ0hdIGZpeHVwISBkcm06IHJvY2tjaGlwOiBBZGQg
Vk9QMiBkcml2ZXIKPiAKPiBUaGUgY2x1c3RlciB3aW5kb3dzIG9ubHkgYWxsb3cgQUZCQyBjb21w
cmVzc2VkIGZvcm1hdHMuIE5vdCBhbGwgb2YgdGhlCj4gb2ZmZXJlZCBmb3JtYXRzIGFyZSBzdXBw
b3J0ZWQgYnkgdGhlIEdQVSB0aG91Z2guIEFwcGxpY2F0aW9ucyBwaWNrIG9uZQo+IG9mIHRoZSBm
b3JtYXRzIGFuZCBhc3N1bWUgdGhhdCB0aGlzIGlzIGFsc28gc3VwcG9ydGVkIGJ5IHRoZSBHUFUg
dGhleQo+IHVzZSB0byByZW5kZXIgb24gdGhlbSwgYnV0IHRoaXMgaXMgbm90IHRoZSBjYXNlIGZv
ciBhbGwgZm9ybWF0cy4KPiBQYXJ0aWN1bGFybHkgRFJNX0ZPUk1BVF9YUkdCODg4OCBhbmQgRFJN
X0ZPUk1BVF9BUkdCODg4OCBhcmUgbm90Cj4gc3VwcG9ydGVkIGJ5IHRoZSBHUFUgYW5kIGNob29z
aW5nIHRoZW0gcmVzdWx0cyBpbiBhIGJsYWNrIHNjcmVlbi4KPiBEcm9wIHRoZXNlIGZvcm1hdHMg
Zm9yIG5vdy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0
cm9uaXguZGU+Cj4gLS0tCj4gZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX3ZvcDJf
cmVnLmMgfCAyIC0tCj4gMSBmaWxlIGNoYW5nZWQsIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF92b3AyX3JlZy5jIGIvZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX3ZvcDJfcmVnLmMKPiBpbmRleCA5YmYwNjM3
YmY4ZTI2Li4zODQxMjc2NmUzNjU5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9yb2NrY2hpcF92b3AyX3JlZy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L3JvY2tjaGlwX3ZvcDJfcmVnLmMKPiBAQCAtMTYsOCArMTYsNiBAQAo+ICNpbmNsdWRlICJyb2Nr
Y2hpcF9kcm1fdm9wMi5oIgo+IAo+IHN0YXRpYyBjb25zdCB1aW50MzJfdCBmb3JtYXRzX3dpbl9m
dWxsXzEwYml0W10gPSB7Cj4gLQlEUk1fRk9STUFUX1hSR0I4ODg4LAo+IC0JRFJNX0ZPUk1BVF9B
UkdCODg4OCwKPiAJRFJNX0ZPUk1BVF9YQkdSODg4OCwKPiAJRFJNX0ZPUk1BVF9BQkdSODg4OCwK
PiAJRFJNX0ZPUk1BVF9SR0I4ODgsCj4gLS0gCj4gCgpXaXRoIGFib3ZlIHBhdGNoIGFwcCBzZWxl
Y3QgZXhwZWN0ZWQgZm9ybWF0IChpIHRoaW5rKToKCjE5NzAtMDEtMDEgMDE6MDA6MzEuMDc0NjQz
IEkgL2Rldi9kcmkvY2FyZDA6IEF1dGhlbnRpY2F0ZWQKMTk3MC0wMS0wMSAwMTowMDozMS4xODk0
MjAgSSAvZGV2L2RyaS9jYXJkMDogRm91bmQgMyBwbGFuZXM7IDMgZm9yIHRoaXMgQ1JUQwoxOTcw
LTAxLTAxIDAxOjAwOjMxLjE4OTQ0NCBJIC9kZXYvZHJpL2NhcmQwOiBTZWxlY3RlZCBQbGFuZSAj
MzcgT3ZlcmxheSBmb3IgdmlkZW8KMTk3MC0wMS0wMSAwMTowMDozMS4xODk1MjggSSAvZGV2L2Ry
aS9jYXJkMDogU3VwcG9ydGVkIERSTSB2aWRlbyBmb3JtYXRzOiBOVjEyLE5WMTYsTlYyNCxZVllV
LFZZVVkKMTk3MC0wMS0wMSAwMTowMDozMS4xODk1MzYgSSAvZGV2L2RyaS9jYXJkMDogU2VsZWN0
ZWQgUGxhbmUgIzQzIE92ZXJsYXkgZm9yIEdVSQoxOTcwLTAxLTAxIDAxOjAwOjMxLjE5MDI3OSBJ
IFdyb3RlIC9ob21lL21pbmlteXRoLy5teXRodHYvZWdsZnNfa21zX2NvbmZpZy5qc29uOiAKewoi
ZGV2aWNlIjogIi9kZXYvZHJpL2NhcmQwIiwKIm91dHB1dHMiOiBbIHsgIm5hbWUiOiAiSERNSTEi
LCAiZm9ybWF0IjogImFiZ3I4ODg4IiwgIm1vZGUiOiAiY3VycmVudCIgfSBdCn0KCihmaWxlIGVn
bGZzX2ttc19jb25maWcuanNvbiBpcyBnZW5lcmF0ZWQgYnkgYXBwIHRvIGNvbmZpZ3VyZSBRdDsg
aXQgaXMgc3RlZXAgKGIpIGluIHllc3RlcmRheSdzIGVtYWlsKSAKSSBzZWUgZm9ybWF0IGFiZ3I4
ODg4IGlzIG5vdyBzZWxlY3RlZCBieSBhcHAgKHRoaXMgaXMgZXhwZWN0ZWQgdCB0aGluaykKCgoK
YnV0IGxhdGVyIFF0IHNheXM6CgoxOTcwLTAxLTAxIDAxOjAwOjM0Ljk4NTIxNSBJIFF0OiBFR0wg
RXJyb3IgOiBDb3VsZCBub3QgY3JlYXRlIHRoZSBlZ2wgc3VyZmFjZTogZXJyb3IgPSAweDMwMDkK
SGFuZGxpbmcgQWJvcnRlZApBYm9ydGVkCiAKSSBzdXNwZWN0IFF0IHRyaWVzIHdpdGggdGhpcyBm
b3JtYXQgdGFsayB0byBHTEVTIHByb3ZpZGVyIC0gYnV0IGl0IHdhc24ndCBzb21laG93IGFjY2Vw
dGVkIGJ5IHVuZGVybHlpbmcgRUdMIHByb3ZpZGVyIChtZXNhIEdMRVMpPwoKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
