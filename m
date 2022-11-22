Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73FA1C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Nov 2022 19:48:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=99wILp+Ji1M0k57EZycwwWUnpsEsHKRGRDmkib9G9p8=; b=wiXh9RIT6EMZ7q
	mofW8vs8wz8EJ8N1DCZSdrTklnPnhEwWL97wNKHNLf0fYE7kPSQvU6wkSv5wMRqUerLpPq91a0ig8
	LwLoVxHLtnbecqTLQAAkZcT+az+TH4E1DAVgwcYu2LX2SdBdzh8+7w/ZTRTKLEiPqhWj08hI5ANMw
	0w1tv2AeA3td6Ka7OlYJfuf5byofI8YLlPa9xx5JNcUDZwvBfu8XQr3RmUvugAorM1RmTVl42FmWg
	XGeaa22GJe3By5QpTj5lHNUKwdxWNmGNXHgXqe6cblaQtvLBdhVvWrh8fpndBgjz6r8Ph65g4STAQ
	twJx/dQI+S6T7LyKe/Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxZFS-00BeGE-J5; Tue, 22 Nov 2022 19:48:02 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxZFP-00BeAp-Ln; Tue, 22 Nov 2022 19:48:01 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 189-20020a1c02c6000000b003d02dd48c45so892751wmc.0;
        Tue, 22 Nov 2022 11:47:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oBhSplhafEZu1O/edyKkvY2p/vQ6iVcq2GtEauKfvlU=;
        b=psHLO8IQlg78nZThnrKNHqTkVOe+3El+1EWbP31cACol3wRP5B+fvCdyezqdvjSPeJ
         hEan2Pe39RN5YOATB+ZkkrsoiiqknGAjv9C5W78rIdN38QicSJibB1NlRZepiZRz623i
         KACfdz+8pud3tc1kdzLx9bD502hpnKAApcoASdTyQZunYZzdylBc5Y8trlpi49j0qTqc
         42olaE6pmiZsNsdSt6VwX9hPNpXIgW+7Y4f23N6vEbt5sFMfEUr2z3ttbfIirAaGpKqr
         sVIguQgBD01nkvwQKF0Ds7zAd6xpkLQSZTUmk4p64RtlRuS6zZUa+Sin2wHHmxztWj8f
         VcoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oBhSplhafEZu1O/edyKkvY2p/vQ6iVcq2GtEauKfvlU=;
        b=8NzN571BbMmdk1GqtbGE77wqqEFExP5Kq79XM+vV49jyEBRIrZ9WmQHImWkiPDo1jm
         VAkvU2MozbvGxwXSvmCTHmUk4Ur9bDDSZCzMeN1COURmMZB5bUsh+pQqY2Go2oGgBEsn
         +HCo7CoB7kvxtd8TOUMqfixCD/OOjfZ3HA6TadZdA0jwZrpCoUKP82AYxDdEisybGL8P
         IoNFB7V64i3WyHfus8LENSzKxR8NwP9DdtMahAUuok8y+dJhtfNhCrqaQ7CLv4X2LlRy
         WMo1XXaQX/HF6AZKab1Is8DDmUU7H+zelh6+7V2wb/vmHBK26C1cgWwPckgdXRfrRZRT
         mIKA==
X-Gm-Message-State: ANoB5pk0GsvdayTTUer+/cD64Kp/Ev8m0aXiSYfhF0rwu6gS0Niv5v7Z
	gAiwARSTXRmaHMV756bsRqg=
X-Google-Smtp-Source: AA0mqf6dKC54I4V8zSBr9hT+XvJnLOIEz3JjMXu9QdrDdKAlLM3uUvltXmSDe42uuECszWciW3NCfg==
X-Received: by 2002:a1c:7513:0:b0:3cf:8896:e1c9 with SMTP id o19-20020a1c7513000000b003cf8896e1c9mr20832287wmc.119.1669146471314;
        Tue, 22 Nov 2022 11:47:51 -0800 (PST)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id u11-20020adfed4b000000b00241e8d00b79sm1007528wro.54.2022.11.22.11.47.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Nov 2022 11:47:50 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, linux-rockchip@lists.infradead.org
Cc: Shengyu Qu <wiagn233@outlook.com>, Michael Tretter <m.tretter@pengutronix.de>, devicetree@vger.kernel.org, heiko@sntech.de, jacob-chen@iotwrt.com, kernel@pengutronix.de, krzysztof.kozlowski+dt@linaro.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, michael.riesch@wolfvision.net, robh+dt@kernel.org, Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add RGA2 support to rk356x
Date: Tue, 22 Nov 2022 20:47:49 +0100
Message-ID: <2694546.oTxpM42Gb3@archbook>
In-Reply-To: <CAMdYzYr68xvNvJRiJw9JyHoN7v12bvucdWLhdkt5j1QJqEuApg@mail.gmail.com>
References: <20221121151755.2072816-3-m.tretter@pengutronix.de> <CAAEAJfC74Am19+GSpCpbWJVpdbgv4n=3pjMHNkpRcCQfwi5xQA@mail.gmail.com> <CAMdYzYr68xvNvJRiJw9JyHoN7v12bvucdWLhdkt5j1QJqEuApg@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_114759_756472_AE5A28F7 
X-CRM114-Status: GOOD (  32.56  )
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

T24gRGllbnN0YWcsIDIyLiBOb3ZlbWJlciAyMDIyIDAwOjEwOjI1IENFVCBQZXRlciBHZWlzIHdy
b3RlOgo+IE9uIE1vbiwgTm92IDIxLCAyMDIyIGF0IDEyOjM0IFBNIEV6ZXF1aWVsIEdhcmNpYQo+
IDxlemVxdWllbEB2YW5ndWFyZGlhc3VyLmNvbS5hcj4gd3JvdGU6Cj4gPgo+ID4gSGkgU2hlbmd5
dSwgTWljaGFlbCwKPiA+Cj4gPiBPbiBNb24sIE5vdiAyMSwgMjAyMiBhdCAyOjEzIFBNIFNoZW5n
eXUgUXUgPHdpYWduMjMzQG91dGxvb2suY29tPiB3cm90ZToKPiA+ID4KPiA+ID4gSGksCj4gPiA+
IEkgcmVtZW1iZXIgc29tZW9uZSBzYWlkIHRoYXQgcmdhMiBoYXMgb25seSAzMmJpdCBhZGRyZXNz
IHNwYWNlIGJ1dCBub3QgaGF2aW5nIGEgbW11IG9yIG1tdSBuZWVkcyB0byBiZSBjb25maWd1cmVk
LiBCZXR0ZXIgYXNrIGJ5IHlvdXJzZWxmIGluIHBpbmU2NCBkaXNjb3JkIHNpbmNlIEknbSBub3Qg
c3VyZSBhYm91dCB0aGF0Lgo+ID4gPgo+ID4gPiBTaGVuZ3l1Cj4gPiA+Cj4gPiA+Cj4gPiA+IOS6
jiAyMDIy5bm0MTHmnIgyMuaXpSBHTVQrMDg6MDAg5LiK5Y2IMTI6NDE6MTYsIE1pY2hhZWwgVHJl
dHRlciA8bS50cmV0dGVyQHBlbmd1dHJvbml4LmRlPiDlhpnliLA6Cj4gPiA+ID5IaSwKPiA+ID4g
Pgo+ID4gPiA+T24gVHVlLCAyMiBOb3YgMjAyMiAwMDowMToyOCArMDgwMCwgU2hlbmd5dSBRdSB3
cm90ZToKPiA+ID4gPj4gU29tZW9uZSBmcm9tIHBpbmU2NCBkaXNjb3JkIGZvdW5kIHRoYXQgUkdB
MiBkb2Vzbid0IHdvcmsgcHJvcGVybHkgb24gb3Zlcgo+ID4gPiA+Pgo+ID4gPiA+PiA0R0IgbWVt
b3J5IFJLMzU2OCBkZXZpY2VzLiBBcmUgeW91IHN1cmUgY3VycmVudCBkcml2ZXIgd29ya3Mgbm93
Pwo+ID4gPiA+Cj4gPiA+ID5JIGFtIGFic29sdXRlbHkgc3VyZSB0aGF0IHRoZSBkcml2ZXIgd29y
a3Mgb24gYSAyR0IgUk9DSzNBIGJvYXJkLgo+ID4gPiA+VW5mb3J0dW5hdGVseSwgSSBkb24ndCBo
YXZlIGEgZGV2aWNlIHdpdGggNEdCIG9yIG1vcmUgbWVtb3J5IGFuZCBJIGNhbm5vdCB0ZXN0Cj4g
PiA+ID50aGUgZHJpdmVyIHdpdGggc3VjaCBhIGRldmljZS4KPiA+ID4gPgo+ID4gPiA+QXMgdGhl
IGRvY3VtZW50YXRpb24gZm9yIHRoZSBSR0EyIGlzIHRoZSBzYW1lIGluIHRoZSBUUk0gb2YgdGhl
IHJrMzI4OCBhbmQKPiA+ID4gPnJrMzU2OCwgSSB3b3VsZCBndWVzcyB0aGF0IHRoZSBkcml2ZXIg
ZG9lc24ndCB3b3JrIG9uIGEgcmszMjg4IHdpdGggbW9yZSB0aGFuCj4gPiA+ID40R0IgKGlmIHRo
ZXJlIGlzIHN1Y2ggYSB0aGluZykgZWl0aGVyIGFuZCB0aGUgZHJpdmVyIG5lZWRzIHRvIGJlIGZp
eGVkIGZvcgo+ID4gPiA+Ym90aCBTb0NzLgo+ID4gPiA+Cj4gPgo+ID4gSW4gYW55IGNhc2UsIGlm
IHRoZXJlJ3Mgc29tZSBraW5kIG9mIGlzc3VlIGl0IG11c3QgYmUgaW4gdGhlIGRyaXZlciwKPiA+
IGFuZCBub3QgaW4gdGhlIGRldmljZSB0cmVlIGJpbmRpbmcgKGkuZS4gdGhpcyBwYXRjaHNldCku
Cj4gCj4gQW4gdW5mb3J0dW5hdGUgbnVtYmVyIG9mIFJvY2tjaGlwIGRyaXZlcnMgYnJlYWsgb24g
cmszNTZ4IGJvYXJkcyB3aXRoCj4gbW9yZSB0aGFuIDRHQiBvZiByYW0uIEkndmUgZm91bmQgcmVx
dWVzdGluZyBtZW1vcnkgYWxsb2NhdGlvbnMgd2l0aAo+IHRoZSBHRlBfRE1BIGZsYWcgc29sdmVz
IHRoZSBwcm9ibGVtLCBhcyB0aGUga2VybmVsIG9ubHkgYWxsb2NhdGVzCj4gMzJiaXQgYWRkcmVz
c2VzIGZvciBETUEgb24gcmszNTZ4LiBUaGlzIGlzIHNpbWlsYXIgdG8gdGhlIGJ1ZyB3aXRoIHRo
ZQo+IElUUyBNU0kgYWxsb2NhdGlvbnMuCgpIZWxsbywKCnRoZSBwcm9ibGVtIGluIHRoaXMgY2Fz
ZSBhdCBsZWFzdCBwYXJ0bHkgc2VlbXMgdG8gYmUgZG93biB0byB0aGUgZHJpdmVyCmFzc3VtaW5n
IDMyIGJpdCBhZGRyZXNzZXMsIHNlZSBlLmcuIFsxXSAoaWYgSSB1bmRlcnN0YW5kIHRoZSBjb2Rl
CmNvcnJlY3RseSkgYW5kIFsyXS4gV2hlbiBJIGFza2VkIGluIHRoZSAjYXJtbGludXggSVJDIG9u
IExpYmVyYS5jaGF0CmFib3V0IHRoaXMsIFJvYmluIE11cnBoeSByZW1hcmtlZDoKCiAgPHJvYm11
cjAxPiB5ZWVzaCwgdGhlIHZpcnRfdG9fcGh5cy9kbWFfc3luYyBhYnVzZSBpcyBldmVuIHdvcnNl
CiAgLSBpbiB0aGF0IHBhcnRpY3VsYXIgaW5zdGFuY2UgSSdkIGJlIGluY2xpbmVkIHRvIHJlcGxh
Y2UKICB7c3JjLGRzdH1fbW11X3BhZ2VzIHdpdGggcHJvcGVyIGNvaGVyZW50IERNQSBidWZmZXJz
CgpTbyB0aGUgZHJpdmVyIGluIGdlbmVyYWwgbmVlZHMgc29tZSBjbGVhbnVwLCB3aGljaCBjb250
cmlidXRlcyB0byB0aGUKcHJvYmxlbS4KCkJ1dCBhcyB3YXMgc2FpZCwgdGhpcyBpc24ndCBhIHBy
b2JsZW0gd2l0aCB0aGUgZGV2aWNlIHRyZWUsIHNvIGl0IHNob3VsZApzdGlsbCBtYWtlIGl0IGlu
LiBJdCBqdXN0IG1lYW5zIHRoYXQgdGhlIGRyaXZlciBpcyBicm9rZW4gb24gOEdCIFJLMzU2eC4K
ClJlZ2FyZHMsCk5pY29sYXMgInNvbWVvbmUgZnJvbSBQSU5FNjQgZGlzY29yZCAod2hvIHdhcyBh
Y3R1YWxseSBvbiBJUkMpIiBGcmF0dGFyb2xpCgpbMV06IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4u
Y29tL2xpbnV4L3Y2LjEtcmMxL3NvdXJjZS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlw
L3JnYS9yZ2EuYyNMODg4ClsyXTogaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjYu
MS1yYzEvc291cmNlL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1idWYu
YyNMMTIwCgo+IAo+ID4KPiA+IFJlZ2FyZHMsCj4gPiBFemVxdWllbAo+ID4KPiA+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKPiA+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiA+
IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCj4gCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
