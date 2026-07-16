Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3374C44501
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jul 2026 12:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1EV8vk9HwSTcTNpZ/55Gy+9hnEt5qgfphSh5okJPYNg=; b=MSw92E1kaZhYPD
	8CkRTdBS/BRglwMrhHG6DeGjjLN0AyOn7qGtipU7suL1Ey6FKc9zinIkFfwV6X9M5TP7p9s7k7T9a
	9LgUdA0ZbDWoTvoQ3B9YBu5yKgd8Pwom1ag95K9SDn+yO2HGNA326RLsCL9/FWhtqXR7sNUERvH4X
	3XGoSDljWpoXR6S2XuHYqdQl1+78vdT6F2e0+qsn5s1zNqCY2EbvdX9nlLxW7pyCow1rpkYVd2ONl
	FdlFVZhZg3EdAjdqSMtU8gZtp4N/LLDgy/WOu9NBNH9ch0igralyWhLE5svP8+1zqGKfrc1Ake0N2
	gjNNQ1Q167r2FrA+clXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkLBh-0000000HFUQ-1FXs;
	Thu, 16 Jul 2026 12:27:37 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkLBe-0000000HFTB-0xej
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Jul 2026 12:27:35 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-475417f010dso3338993f8f.2
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Jul 2026 05:27:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784204852; cv=none;
        d=google.com; s=arc-20260327;
        b=bl589iDROz+eXg8769TZuxC0z3eSF5udj5Nqgn0ZlGz57mtMtF5Ig+cssmBaBfTCZZ
         93CKr1AguYVP57L+n23jjm5UTFGGnfspBFD3loCiVUXso0+UYFgtw5iZko4Zl0EC3gz+
         hWp2jhM+JwFS4cfU89md70EddwamRwFwUJz3pdspWcAhXkxq+Cu8+Hpn3E7++/ztAgzA
         3D6mHN7drcM+iIduT/JA+Qxy02Fq0ufAHebja3NTzUxUMO5tP4K1KyPpTI+LOYb0YDQB
         BQ1D8YvbD7xZU9ai7JxdQAks8zJv+PrVIn/cvNEgm54cq4+PDKr/xHhlc9WphJqUpWXV
         ecUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=85KSTws32WPyRCiZC1/0LybeFCEGGOzS0CRvJprKyoI=;
        fh=3VV3WC7x520SwLi+NjhZhvdw36epndqHfqwMZ8UvTZ8=;
        b=aJ4CYG2LsUUmROuDaVzvKjrEcEw+N63z0yylHVRxXmR91e440QwyLqpp1oAkxqKBek
         HUasPoEooyf7oRzIkUlZ/2/w8HqakpbjRZWTEwl1Yya4WaJ5h94uWtphTyisAMY2DUER
         s+1lEZeITY0zdf+jWo41A50nGQYEb8CLYgRJ37fnwPF1MXdhISO3rjmoBKNPzhDZrdpr
         09F2LkJZEmyQ+/4Ol92HI0laAN6SR4cVd9jkmWVXYbkiT+3PXJCY7il9Tz5RJEkN/qbl
         lPhVPenOJOtPmQINMVZlCy0C2ruYyZo2/G7XYePL4jiFJK5azMOfLQ+1Vg7erHBj7AeH
         ka9A==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784204852; x=1784809652; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=85KSTws32WPyRCiZC1/0LybeFCEGGOzS0CRvJprKyoI=;
        b=PAw7p8Pa49rVH1GG6UzkbrxlxJA3tuAmvYwzt7yjDHNWPYsrzuNXyN6/N1oUoXLx+D
         NizVJXxPs6ncWe8zEMDSB9IeQaWOZF+wy9es98wikygZ4e3Lwd2PNWQNgZUUbxAcGrx1
         AXr8K3pOunHlLY+hMY0zpcAwXWEtOXEx9UcaMHSxvuOkWTak/J/8sK5JdltJ/ipQWo97
         kpJY0Qm2Kp9AxuO6Ay5OasoXwjsCbS2uFVGMH8graxC5Lo1d57XhN2SL3e4m3wnUUQx4
         xweCfFl+GxwvdU5rsm7aa4ijmG0AZ/N7Y/2E3LMR7CMj89oXCtOghRJYWN4rBz6eHP6j
         12oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784204852; x=1784809652;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=85KSTws32WPyRCiZC1/0LybeFCEGGOzS0CRvJprKyoI=;
        b=mZCXpRnGTSnp5X9gw9YVbUBSr7BsG7yBc65LVjn0ZE1nkGyE3Ika7mO/Kw02nuXg11
         9Lo5qfSpjLkPps1FsmGBpZVDsPjGLSZbBgGUQ7CRyPycTEZGwfB6dfpzAb4bwpwvPPig
         obkBq9jpCnrnSYivStbIdbaervTx4975fKze/5O25U7UzLvuhL7dIdSRfvXalUy/nnbX
         bBXoWCHD0E0wEOPeqvHIcFiJ7wFaK735Qu8tEcuwLdHju04NekHz4deQP9tT+VkIHsA3
         3L3C92HgkxHOqwEDJEa+RR7A6ol0z3BpC6Z0SDKS5Sbo/Bxu9YODgfDdFPA3zgil7k8m
         bNuA==
X-Forwarded-Encrypted: i=1; AHgh+Rpse7U7jC/Z4nJNKrqqBGKDaebl4LPE92iIQFW4RSA5G59gL6qugJr5oDia6xSRzoU/uyYYc0mICLS9Hk5PSQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyXUe/qvG0Tf4Dvazh49YWngfS1YCqgyojpDmnrYJ1AOIKxGQx4
	WBNG9BZhALLHMDlocsfyVvJzHsQGcLiM8Umu1sj0UQmE+fjqWBXSE41OwEUCvFPqW9bTbYUuPkR
	FMP5Ldp9RantjA2tm5VRrj3FZFlVOsZkq4i5T
X-Gm-Gg: AfdE7cnGVcovd+FmewmOE3o7WG/a/y2SvB9fPwTz8Ve9p+0N+MXZ93oVWLDOTzIYeoi
	CECB9EglNiPeFzEnfwmpCEjNfgBd1gT6/J6jDPn+62O2fcKKKsiIHOtZt2orSWy60HojqBmfOup
	h9swE2axAqu7Yq4VbQNdKO0bNkf/Bnqgp9snH5m6tCBnlRByV6tjL4NpyM/qRr+hcXiiiAiu2bM
	CZCDnlkcePbPhHDCuEhh8NrsX0t06lfFtspRIPOVO8hlP/2MHu+gGchQuiJXw==
X-Received: by 2002:a05:6000:2911:b0:47f:2baf:5e2b with SMTP id
 ffacd0b85a97d-47f4fc99a4fmr8133433f8f.1.1784204852159; Thu, 16 Jul 2026
 05:27:32 -0700 (PDT)
MIME-Version: 1.0
References: <20260612-hdptx-clk-fixes-v4-0-ce5e1d456cda@collabora.com> <20260612-hdptx-clk-fixes-v4-1-ce5e1d456cda@collabora.com>
In-Reply-To: <20260612-hdptx-clk-fixes-v4-1-ce5e1d456cda@collabora.com>
From: Andy Yan <andyshrk@gmail.com>
Date: Thu, 16 Jul 2026 20:27:19 +0800
X-Gm-Features: AUfX_mzgo6LqHodBqk8XKfq4lJF2iVLX6VlVzaraq-ul6MEoybhP2jiUNkg_Mig
Message-ID: <CANbgqAR=ECWEHv2X85nOASmm=r91ipO=r=8ufrrXFYLxxKCaFg@mail.gmail.com>
Subject: Re: [PATCH v4 1/8] phy: rockchip: samsung-hdptx: Fix rate
 recalculation for high bpc
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
	Dmitry Baryshkov <lumag@kernel.org>, kernel@collabora.com, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, =?UTF-8?Q?Thomas_Niederpr=C3=BCm?= <dubito@online.de>, 
	Simon Wright <simon@symple.nz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260716_052734_321498_77D6ECBE 
X-CRM114-Status: GOOD (  18.51  )
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

SGVsbG/vvIwKQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3Jh
LmNvbT4g5LqOMjAyNuW5tDbmnIgxMuaXpeWRqOS6lCAwNzo0NeWGmemBk++8mgo+Cj4gVGhlIFBI
WSBQTEwgY2FuIGJlIHByb2dyYW1tZWQgYnkgYW4gZXh0ZXJuYWwgY29tcG9uZW50LCBlLmcuIHRo
ZQo+IGJvb3Rsb2FkZXIsIGp1c3QgYmVmb3JlIHRoZSByZWNhbGNfcmF0ZSgpIGNhbGxiYWNrIGlz
IGludm9rZWQgZHVyaW5nCj4gZGV2bV9jbGtfaHdfcmVnaXN0ZXIoKSBpbiB0aGUgcHJvYmUgcGF0
aC4KPgo+IFRoZXJlZm9yZSBya19oZHB0eF9waHlfY2xrX3JlY2FsY19yYXRlKCkgZmluZHMgdGhl
IFBMTCBlbmFibGVkIGFuZAo+IGF0dGVtcHRzIHRvIGNvbXB1dGUgdGhlIGNsb2NrIHJhdGUsIHdo
aWxlIG1ha2luZyB1c2Ugb2YgdGhlIGJwYyB2YWx1ZQo+IGZyb20gdGhlIEhETUkgUEhZIGNvbmZp
Z3VyYXRpb24sIHdoaWNoIGFsd2F5cyBkZWZhdWx0cyB0byA4IGJlY2F1c2UKPiBwaHlfY29uZmln
dXJlKCkgd2FzIG5vdCBydW4gYXQgdGhhdCBwb2ludC4gIEFzIGEgY29uc2VxdWVuY2UsIHRoZQo+
IChyZSljYWxjdWxhdGVkIHJhdGUgaXMgaW5jb3JyZWN0IHdoZW4gdGhlIGFjdHVhbCBicGMgd2Fz
IGhpZ2hlciB0aGFuIDguCj4KPiBEbyBub3QgcmVseSBvbiBhbnkgb2YgdGhlIGhkbWlfY2ZnIG1l
bWJlcnMgd2hlbiBjb21wdXRpbmcgdGhlIGNsb2NrIHJhdGUKPiBhbmQsIGluc3RlYWQsIHJlYWQg
dGhlIHJlcXVpcmVkIGlucHV0IGRhdGEgKGkuZS4gYnBjKSwgZGlyZWN0bHkgZnJvbSB0aGUKPiBo
YXJkd2FyZSByZWdpc3RlcnMuCj4KPiBGaXhlczogMzQ4MWZjMDRkOTY5ICgicGh5OiByb2NrY2hp
cDogc2Ftc3VuZy1oZHB0eDogQ29tcHV0ZSBjbGsgcmF0ZSBmcm9tIFBMTCBjb25maWciKQo+IFRl
c3RlZC1ieTogVGhvbWFzIE5pZWRlcnByw7xtIDxkdWJpdG9Ab25saW5lLmRlPgo+IFRlc3RlZC1i
eTogU2ltb24gV3JpZ2h0IDxzaW1vbkBzeW1wbGUubno+Cj4gU2lnbmVkLW9mZi1ieTogQ3Jpc3Rp
YW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4KCiAgIFJldmll
d2VkLWJ577yaQW5keSBZYW4gPGFuZHlzaHJrQGdtYWlsLmNvbT4KClRoYW5rcwo+IC0tLQo+ICBk
cml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC5jIHwgMTMgKysr
Ky0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9u
cygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1z
YW1zdW5nLWhkcHR4LmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3Vu
Zy1oZHB0eC5jCj4gaW5kZXggMmQ5NzNiYzM3ZjA3Li43MTA2MDNhZmZmODYgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXNhbXN1bmctaGRwdHguYwo+ICsr
KyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zYW1zdW5nLWhkcHR4LmMKPiBA
QCAtMjE2OCw3ICsyMTY4LDcgQEAgc3RhdGljIHU2NCBya19oZHB0eF9waHlfY2xrX2NhbGNfcmF0
ZV9mcm9tX3BsbF9jZmcoc3RydWN0IHJrX2hkcHR4X3BoeSAqaGRwdHgpCj4gICAgICAgICBzdHJ1
Y3QgbGNwbGxfY29uZmlnIGxjcGxsX2h3Owo+ICAgICAgICAgc3RydWN0IHJvcGxsX2NvbmZpZyBy
b3BsbF9odzsKPiAgICAgICAgIHU2NCBmb3V0LCBzZG07Cj4gLSAgICAgICB1MzIgbW9kZSwgdmFs
Owo+ICsgICAgICAgdTMyIG1vZGUsIGJwYywgdmFsOwo+ICAgICAgICAgaW50IHJldCwgaTsKPgo+
ICAgICAgICAgcmV0ID0gcmVnbWFwX3JlYWQoaGRwdHgtPnJlZ21hcCwgQ01OX1JFRygwMDA4KSwg
Jm1vZGUpOwo+IEBAIC0yMjY2LDYgKzIyNjYsNyBAQCBzdGF0aWMgdTY0IHJrX2hkcHR4X3BoeV9j
bGtfY2FsY19yYXRlX2Zyb21fcGxsX2NmZyhzdHJ1Y3QgcmtfaGRwdHhfcGh5ICpoZHB0eCkKPiAg
ICAgICAgIGlmIChyZXQpCj4gICAgICAgICAgICAgICAgIHJldHVybiAwOwo+ICAgICAgICAgcm9w
bGxfaHcucG1zX3NkaXYgPSAoKHZhbCAmIFBMTF9QQ0dfUE9TVERJVl9TRUxfTUFTSykgPj4gNCkg
KyAxOwo+ICsgICAgICAgYnBjID0gKEZJRUxEX0dFVChQTExfUENHX0NMS19TRUxfTUFTSywgdmFs
KSA8PCAxKSArIDg7Cj4KPiAgICAgICAgIGZvdXQgPSBQTExfUkVGX0NMSyAqIHJvcGxsX2h3LnBt
c19tZGl2Owo+ICAgICAgICAgaWYgKHJvcGxsX2h3LnNkbV9lbikgewo+IEBAIC0yMjgwLDcgKzIy
ODEsNyBAQCBzdGF0aWMgdTY0IHJrX2hkcHR4X3BoeV9jbGtfY2FsY19yYXRlX2Zyb21fcGxsX2Nm
ZyhzdHJ1Y3QgcmtfaGRwdHhfcGh5ICpoZHB0eCkKPiAgICAgICAgICAgICAgICAgICAgICAgICBm
b3V0ID0gZm91dCArIHNkbTsKPiAgICAgICAgIH0KPgo+IC0gICAgICAgcmV0dXJuIGRpdl91NjQo
Zm91dCAqIDIsIHJvcGxsX2h3LnBtc19zZGl2ICogMTApOwo+ICsgICAgICAgcmV0dXJuIERJVl9S
T1VORF9DTE9TRVNUX1VMTChmb3V0ICogMiAqIDgsIHJvcGxsX2h3LnBtc19zZGl2ICogMTAgKiBi
cGMpOwo+ICB9Cj4KPiAgc3RhdGljIHVuc2lnbmVkIGxvbmcgcmtfaGRwdHhfcGh5X2Nsa19yZWNh
bGNfcmF0ZShzdHJ1Y3QgY2xrX2h3ICpodywKPiBAQCAtMjI4OCwxOSArMjI4OSwxMyBAQCBzdGF0
aWMgdW5zaWduZWQgbG9uZyBya19oZHB0eF9waHlfY2xrX3JlY2FsY19yYXRlKHN0cnVjdCBjbGtf
aHcgKmh3LAo+ICB7Cj4gICAgICAgICBzdHJ1Y3QgcmtfaGRwdHhfcGh5ICpoZHB0eCA9IHRvX3Jr
X2hkcHR4X3BoeShodyk7Cj4gICAgICAgICB1MzIgc3RhdHVzOwo+IC0gICAgICAgdTY0IHJhdGU7
Cj4gICAgICAgICBpbnQgcmV0Owo+Cj4gICAgICAgICByZXQgPSByZWdtYXBfcmVhZChoZHB0eC0+
Z3JmLCBHUkZfSERQVFhfQ09OMCwgJnN0YXR1cyk7Cj4gICAgICAgICBpZiAocmV0IHx8ICEoc3Rh
dHVzICYgSERQVFhfSV9QTExfRU4pKQo+ICAgICAgICAgICAgICAgICByZXR1cm4gMDsKPgo+IC0g
ICAgICAgcmF0ZSA9IHJrX2hkcHR4X3BoeV9jbGtfY2FsY19yYXRlX2Zyb21fcGxsX2NmZyhoZHB0
eCk7Cj4gLQo+IC0gICAgICAgaWYgKGhkcHR4LT5oZG1pX2NmZy5tb2RlID09IFBIWV9IRE1JX01P
REVfRlJMKQo+IC0gICAgICAgICAgICAgICByZXR1cm4gcmF0ZTsKPiAtCj4gLSAgICAgICByZXR1
cm4gRElWX1JPVU5EX0NMT1NFU1RfVUxMKHJhdGUgKiA4LCBoZHB0eC0+aGRtaV9jZmcuYnBjKTsK
PiArICAgICAgIHJldHVybiBya19oZHB0eF9waHlfY2xrX2NhbGNfcmF0ZV9mcm9tX3BsbF9jZmco
aGRwdHgpOwo+ICB9Cj4KPiAgc3RhdGljIGludCBya19oZHB0eF9waHlfY2xrX2RldGVybWluZV9y
YXRlKHN0cnVjdCBjbGtfaHcgKmh3LAo+Cj4gLS0KPiAyLjU0LjAKPgo+CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
