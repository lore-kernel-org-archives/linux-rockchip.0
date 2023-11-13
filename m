Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D616C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Nov 2023 15:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C4llgFl+nHIZfAi1WRfHgw5O4gATwKUBh9mm79RF4AQ=; b=xVSEl9wla8CFqJ
	0oPhBs14Kx3jZzlNKwZ0xXfuYElU91QSpE6whpiEMOtn5IGJlMgXupG/no0nx6x/HLBca7c1qMmAA
	fvnOL02w6s0wSgyd5dEAL4WIGJ9WevdOFls+y6VoWOqSz7EDraCuSMCquSdKmQCRnH3QPIfIuX0IC
	HJqBcj0+T3W/iJeG2ZLiGP3IJQkhLB+SRwfU1zShIX+z4Z5TKVNOWpIULQjP5HliD4RiyDVICOCCH
	K6C135BMMT1f4QzRqdff9JraIEzHm+ipKZTuvgW0wJcAPXQQsMrrfGYooK4fKD79o5dxetEqI+vzO
	j1xNm9I3WanvoyesePUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2YfI-00EDYT-2s;
	Mon, 13 Nov 2023 15:15:52 +0000
Received: from mail-yw1-x1135.google.com ([2607:f8b0:4864:20::1135])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r2YfE-00EDXQ-2M
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Nov 2023 15:15:50 +0000
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-5a7b91faf40so52640517b3.1
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Nov 2023 07:15:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1699888546; x=1700493346; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qFzJreDRT31H+y0jyIEDRuhNT8QoPX317nTi9EqfR10=;
        b=mvVJ4YnCtzDSu6la27uduBuxzQ0Oj0TUv8/4j6NHFQSdBQzqinlfQyjH9zf/urk9Wp
         pKFZou/xUwyJD0lu+Wqm/d0erQZnEh4b5lH2Gyt+ws3HYpkoXmGq2Eli/baCGN3SPbeC
         sm2Z2VeDrQNF4oH5uFxTCqouQdVZbS3CisPoqBbmTgOf9vyLqyCKtRjyeXpyp9myb8dE
         efuzKbKIuYGmSDJS23p07Yv4g3HQCXPFfvL0d62uJMh1Pmo6oFmRtxVtb1Wr262WsBpw
         fiMl33wV0XEkQUkJd2U1lT2bsAUKUA7aXtGbr30gfhhSKXaLsX4Op1bjqg+2/2CD7vt7
         KwEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699888546; x=1700493346;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qFzJreDRT31H+y0jyIEDRuhNT8QoPX317nTi9EqfR10=;
        b=i5aBM+XOv+MgVZ/WxJ8lTLifmx/5v1FtjBg5CKdkbu/iYgbxMhLTnzPxAH/wid26aY
         0SBi0xI6MJfxwli9+tSo82LwP9X1ZCKEOLIPskpuHU7dywGTH11YJbFYaGGsppZioAgx
         psJHDm+BWKskTJ1TCY5aIFuu8rZy/zYs8rzz6aJRUnoTUBeMNajYzVwFE5waPQnnuxPD
         GkKwLv/S9eTjYmoSZCFokpOnfMCu2wdXoLCBZtCuCCXFV/FemEdv5iBK6DxfMvjj1knm
         xGCeLaiPC09pMkzbB4UhNwvFqwDML9KSxS/PEfZuKUxBcjCRP4g4k0cUc7mZv4zjiDNA
         /1cw==
X-Gm-Message-State: AOJu0YzVrq/NIbsXT7b9OMRurdjMtWD0nrozIUJp0cJ3VCKfd/yTqrDK
	m1gx+IwKBDE8QDu/r9/f1j8kqNPgKrOQrBMtQRlZng==
X-Google-Smtp-Source: AGHT+IEViwim7q06I5kBXIicGi7+h5Bbd828ZjCk3ZnnNbwwCq55VYOMAx8eG7+erphkjxQv0TNwdBOLhF7UOHjUeX8=
X-Received: by 2002:a81:8901:0:b0:583:b186:d817 with SMTP id
 z1-20020a818901000000b00583b186d817mr5582807ywf.27.1699888545614; Mon, 13 Nov
 2023 07:15:45 -0800 (PST)
MIME-Version: 1.0
References: <20230731200559.635629-1-jagan@edgeble.ai> <2194166.1BCLMh4Saa@diego>
In-Reply-To: <2194166.1BCLMh4Saa@diego>
From: Jagan Teki <jagan@edgeble.ai>
Date: Mon, 13 Nov 2023 10:15:34 -0500
Message-ID: <CA+VMnFwGe6c4e2wucEUNmr8RDjv=DSnZ1UrDHiLdnNq5a9-3XQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Add Radxa ROCK 4C+ DSI DT-overlay
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231113_071549_087299_D9936A24 
X-CRM114-Status: GOOD (  20.85  )
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

T24gVGh1LCA1IE9jdCAyMDIzIGF0IDA2OjA3LCBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250ZWNo
LmRlPiB3cm90ZToKPgo+IEFtIE1vbnRhZywgMzEuIEp1bGkgMjAyMywgMjI6MDU6NTcgQ0VTVCBz
Y2hyaWViIEphZ2FuIFRla2k6Cj4gPiBBZGQgRFNJIHBpcGVsaW5lIGZvciBSYWR4YSBST0NLIDRD
KyBib2FyZCB2aWEgRFQtb3ZlcmxheS4KPiA+Cj4gPiBUaGUgRFNJIGNvbm5lY3RvciBpbiBSYWR4
YSBST0NLIDRDKyBib2FyZCBzdXBwb3J0IGRpZmZlcmVudAo+ID4gcmVzb2x1dGlvbiBwYW5lbHMg
YW5kIHRob3NlIGNvbXBhdGlibGUgaXMgYWRkZWQgaW4gYW5vdGhlcgo+ID4gRFQtb3ZlcmxheS4K
PiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBlZGdlYmxlLmFpPgo+ID4g
LS0tCj4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZSAgICAgICAgIHwg
IDEgKwo+ID4gIC4uLi9yazMzOTktcm9jay00Yy1wbHVzLW1pcGktZHNpLmR0c28gICAgICAgICB8
IDY5ICsrKysrKysrKysrKysrKysrKysKPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDcwIGluc2VydGlv
bnMoKykKPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazMzOTktcm9jay00Yy1wbHVzLW1pcGktZHNpLmR0c28KPiA+Cj4gPiBkaWZmIC0tZ2l0IGEv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZSBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvTWFrZWZpbGUKPiA+IGluZGV4IDFlYmJiM2U5YzJmOS4uM2E0YzRjZDc2OWVi
IDEwMDY0NAo+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZQo+
ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZQo+ID4gQEAgLTU4
LDYgKzU4LDcgQEAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzM5OS1yb2MtcGMu
ZHRiCj4gPiAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzM5OS1yb2MtcGMtbWV6
emFuaW5lLmR0Ygo+ID4gIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazMzOTktcm9j
LXBjLXBsdXMuZHRiCj4gPiAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzM5OS1y
b2NrLTRjLXBsdXMuZHRiCj4gPiArZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzM5
OS1yb2NrLTRjLXBsdXMtbWlwaS1kc2kuZHRibwo+ID4gIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tD
SElQKSArPSByazMzOTktcm9jay00c2UuZHRiCj4gPiAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NI
SVApICs9IHJrMzM5OS1yb2NrLXBpLTRhLmR0Ygo+ID4gIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tD
SElQKSArPSByazMzOTktcm9jay1waS00YS1wbHVzLmR0Ygo+ID4gZGlmZiAtLWdpdCBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2stNGMtcGx1cy1taXBpLWRzaS5kdHNv
IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jay00Yy1wbHVzLW1pcGkt
ZHNpLmR0c28KPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiBpbmRleCAwMDAwMDAwMDAwMDAu
LjI3MTcxNzA0MGI2Ywo+ID4gLS0tIC9kZXYvbnVsbAo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jay00Yy1wbHVzLW1pcGktZHNpLmR0c28KPiA+IEBAIC0w
LDAgKzEsNjkgQEAKPiA+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjArIE9S
IE1JVCkKPiA+ICsvKgo+ID4gKyAqIENvcHlyaWdodCAoYykgMjAyMyBSYWR4YSBDb21wdXRlciBD
by4sIEx0ZC4KPiA+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMjMgRWRnZWJsZSBBSSBUZWNobm9sb2dp
ZXMgUHZ0LiBMdGQuCj4gPiArICoKPiA+ICsgKiBEVC1vdmVybGF5IGZvciBSYWR4YSBST0NLIDRD
KyBEU0kgQ29ubmVjdG9yLgo+ID4gKyAqLwo+ID4gKwo+ID4gKy9kdHMtdjEvOwo+ID4gKy9wbHVn
aW4vOwo+ID4gKwo+ID4gKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9ncGlvL2dwaW8uaD4KPiA+ICsj
aW5jbHVkZSA8ZHQtYmluZGluZ3MvcGluY3RybC9yb2NrY2hpcC5oPgo+ID4gKwo+ID4gKyZ7L30g
ewo+ID4gKyAgICAgYmFja2xpZ2h0OiBiYWNrbGlnaHQgewo+ID4gKyAgICAgICAgICAgICBjb21w
YXRpYmxlID0gInB3bS1iYWNrbGlnaHQiOwo+ID4gKyAgICAgICAgICAgICBwd21zID0gPCZwd20y
IDAgMjUwMDAgMD47Cj4gPiArICAgICB9Owo+ID4gK307Cj4gPiArCj4gPiArJm1pcGlfZHNpIHsK
PiA+ICsgICAgIGNsb2NrLW1hc3RlcjsKPiA+ICsgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+Owo+
ID4gKyAgICAgI3NpemUtY2VsbHMgPSA8MD47Cj4gPiArICAgICBzdGF0dXMgPSAib2theSI7Cj4g
PiArCj4gPiArICAgICBwb3J0cyB7Cj4gPiArICAgICAgICAgICAgICNhZGRyZXNzLWNlbGxzID0g
PDE+Owo+ID4gKyAgICAgICAgICAgICAjc2l6ZS1jZWxscyA9IDwwPjsKPiA+ICsKPiA+ICsgICAg
ICAgICAgICAgbWlwaV9vdXQ6IHBvcnRAMSB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgcmVn
ID0gPDE+Owo+ID4gKwo+ID4gKyAgICAgICAgICAgICAgICAgICAgIG1pcGlfb3V0X3BhbmVsOiBl
bmRwb2ludCB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZW1vdGUtZW5kcG9p
bnQgPSA8Jm1pcGlfaW5fcGFuZWw+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgIH07Cj4gPiAr
ICAgICAgICAgICAgIH07Cj4gPiArICAgICB9Owo+ID4gKwo+ID4gKyAgICAgcGFuZWw6IHBhbmVs
QDAgewo+ID4gKyAgICAgICAgICAgICAvKiBkaWZmZXJlbnQgcmVzb2x1dGlvbiBwYW5lbHMgYXJl
IHVzZWQsIGNvbXBhdGlibGVzIGFyZSBpbiBEVE8gKi8KPgo+IHRoZW4gSSBndWVzcywgdGhlIHBh
bmVsIG5vZGUgc2hvdWxkIGdldCBhIGRpc2FibGVkIGhlcmUgKGFuZCB0aGUgbWlwaV9kc2kKPiBz
aG91bGQgc3RheSBkaXNhYmxlZCBhdCB0aGlzIHBvaW50KSBhbmQgYm90aCBzaG91bGQgZ2V0IGVu
YWJsZWQgaW4gdGhlIGZpbmFsCj4gZHRibyB3aGVyZSB0aGUgY29tcGF0aWJsZSBsaXZlcz8KCkRv
IHlvdSBtZWFuIGRzaSBhbHNvIG5lZWRzIHRvIGJlIGRpc2FibGVkIGhlcmUgYW5kIGVuYWJsZWQg
aW4gZHRibz8gaWYKc28gd2h5PyBpZiBwYW5lbCBkaXNhYmxlZCB0aGVuIGRzaSB3b24ndCBwcm9i
ZSBldmVuIGlmIGl0IGVuYWJsZWQuCgpKYWdhbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
