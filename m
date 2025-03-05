Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76D80C282EC
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Mar 2025 22:23:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uRUuNrMg9tahew7qc28q6VQjyqGkkm5gi/JjCiNtJUA=; b=uG0Uij9YO7n/nN
	WTzC9UmlEq8Wf06ppRh0DSRG3xQcx3BXiOM/QmzxVvL7sNmC1jgyIJ/0K9lZhlpRJX6U5O29mRyZ9
	PWhrCu7GlsKWzVCr8LR4zSN9HBYIFrX+wncW9qsXJMUMn3FXFojLkCUQhJbE5ypEQinHMLIf8IHR4
	BodcKbZmiRuspycgw1bWGi/gckQKTvHbfot5nUYEXUQATIX0rSiOxMRMODeUk3bsHDmufYT+Pcgla
	C97nomxfFBvZHOL/pHuKmpUzMrXPmF4fnKZa+TW/LOPElDANvlUS5mCUEG7u8VGEqVbIOcUU2GN1J
	qJnp4An5TUfRk+lZMHng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpx9S-00000009TRq-43I1;
	Wed, 05 Mar 2025 22:23:42 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpx5t-00000009Sr1-0jLE;
	Wed, 05 Mar 2025 22:20:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 547975C6CB2;
	Wed,  5 Mar 2025 22:17:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2E1EC4CEE8;
	Wed,  5 Mar 2025 22:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741213199;
	bh=odGwjXPuLoI3+Jrcw4b7Ov4gl4KEsYLb21Fg97K0Pb0=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=bKzBhBHPDCKuhVEaReaQ76MMsX2G1SX6D/bEE6l0Z2qcbL9g+m8ImZLln3Z02uP7H
	 iQqyRHRtaCWtcg0HBo95FpeZ+F3G6yr35SrcUT2ZLRHt8PTRrzIGBdY0WT/wbt/mEd
	 jvhBbaBx5xc1kZLmU+PCHnsngL1rKm5KkpSGkTrBPbmxqlJVSL024qhcSeG/q+iAIA
	 2w7669UcigcbOGvIbi2rsSnBItY2MDB8B9uujNF4gZU0YxuylU/2HcJbiURsRxusd6
	 +fSV2SaFb3BmOwp+qsn3CKmtxNgaC/RrUW61PdmmFVFb5snhFHSafDfFAaE9UMjKo8
	 8HGukhVwTdq1g==
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5e0573a84fcso9892129a12.2;
        Wed, 05 Mar 2025 14:19:59 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV5mugi2J1ajEHn2BTC92n4F7FSoLLV6Mi7jJtEH/xlGdfSSCaP6gqiA6YHou++b6ItV6MuaRpOSrxJ9muezjQg@lists.infradead.org, AJvYcCXit3SdOzrMIvj6TCaJB2DEOD3uqvYkJO5tIqfo0od49USKtk5wCJV0GXVg1GOfzWKYA4tZiL7kvXEIVbIeUOc=@lists.infradead.org
X-Gm-Message-State: AOJu0YxqkSGuJAurkU2H9JXfH/Uxc42Aj01Ic+uDfDewxPT4DY1g0mWx
	voO+ndMwbJMV/UDCqLrlJl+CsWtzrMlATasS0dzjN4qgB7ZAacU4GA7tqW4aV1FHeVvDyAbNG4b
	a7eTvkepYZ3Iqq9RuAOKYTdUhYQ==
X-Google-Smtp-Source: AGHT+IGmcbRnsKh4qmTIrjjZnvbSUllEyKfAIMmiWB3ZMYddCqtDRqGxn1VMbXWC0I5eXo67K8lElFHwxeHn8Rragx0=
X-Received: by 2002:a05:6402:1ece:b0:5e4:d75a:573e with SMTP id
 4fb4d7f45d1cf-5e59f4f8e28mr4935569a12.32.1741213198291; Wed, 05 Mar 2025
 14:19:58 -0800 (PST)
MIME-Version: 1.0
References: <20250305140009.2485859-1-amadeus@jmu.edu.cn>
In-Reply-To: <20250305140009.2485859-1-amadeus@jmu.edu.cn>
From: Rob Herring <robh@kernel.org>
Date: Wed, 5 Mar 2025 16:19:46 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJgjD69wtJJfLuvBQ4g+JprxQ9mKGPWGgY1dmziehe-Kw@mail.gmail.com>
X-Gm-Features: AQ5f1JoAojNhKXJ10NzfyCQO9G1rFeCcWSk_-mw-M74iUoDe9bMGrTl0QURdgE0
Message-ID: <CAL_JsqJgjD69wtJJfLuvBQ4g+JprxQ9mKGPWGgY1dmziehe-Kw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: mfd: syscon: Add rk3528 QoS register compatible
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Yao Zi <ziyao@disroot.org>, Lee Jones <lee@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_142001_275675_135C9D07 
X-CRM114-Status: GOOD (  12.14  )
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

T24gV2VkLCBNYXIgNSwgMjAyNSBhdCA4OjAw4oCvQU0gQ2h1a3VuIFBhbiA8YW1hZGV1c0BqbXUu
ZWR1LmNuPiB3cm90ZToKPgo+IERvY3VtZW50IHJrMzUyOCBjb21wYXRpYmxlIGZvciBRb1MgcmVn
aXN0ZXJzLgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2h1a3VuIFBhbiA8YW1hZGV1c0BqbXUuZWR1LmNu
Pgo+IC0tLQo+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3N5c2Nvbi55
YW1sIHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+Cj4gZGlmZiAtLWdp
dCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvc3lzY29uLnlhbWwgYi9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3N5c2Nvbi55YW1sCj4gaW5kZXgg
NGQ2N2ZmMjZkNDQ1Li5mY2ZkMjkzYjliZjEgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9zeXNjb24ueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvc3lzY29uLnlhbWwKPiBAQCAtMTAzLDYgKzEwMyw3IEBA
IHNlbGVjdDoKPiAgICAgICAgICAgIC0gcm9ja2NoaXAscmszMjg4LXFvcwo+ICAgICAgICAgICAg
LSByb2NrY2hpcCxyazMzNjgtcW9zCj4gICAgICAgICAgICAtIHJvY2tjaGlwLHJrMzM5OS1xb3MK
PiArICAgICAgICAgIC0gcm9ja2NoaXAscmszNTI4LXFvcwoKVGhlcmUncyAyIHNwb3RzIHlvdSBo
YXZlIHRvIGFkZCB0aGlzLgoKPiAgICAgICAgICAgIC0gcm9ja2NoaXAscmszNTYyLXFvcwo+ICAg
ICAgICAgICAgLSByb2NrY2hpcCxyazM1NjgtcW9zCj4gICAgICAgICAgICAtIHJvY2tjaGlwLHJr
MzU3Ni1xb3MKPiAtLQo+IDIuMjUuMQo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
