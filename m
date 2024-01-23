Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1A9CC47DDB
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jan 2024 04:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=INyKq0+iw7VA1NcyB+QfHvQSaafuLw7E8FzeAljZa3I=; b=XRi+fHDF7Kxxjy
	au+JwdqqEh2pveCDP68X5tx3+5Mmp3acGgpXcbooBZ2eNJBlFve95kTmJ4sLU1UOtDyRCzUJZbYLH
	zeZAGZ5mXUO57hZtHmcorAxlmYrthOg/aj1WMN9npR8KIHvUGmkGhs6jTMpLY3ghfXrTEZD9UQu5y
	KHnsUGmPdmFa6mSkcNn3tJ3ttsBfynIPlcWxWaqgiqOIb7lHAZdXtOTnlCmeToWacrurEntBOC5MJ
	V1YIU2jP2JeHU1Fk7WTAK30vMzNwsGNQIDPc6JgdY/yMA7JRlO0LZxeLdeDeYgQ7DOTTSEocqx7KR
	t4f0Ms5RXooRH0gQf2/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rS8M6-00F3wB-1s;
	Tue, 23 Jan 2024 04:25:46 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rS8M3-00F3vk-1N;
	Tue, 23 Jan 2024 04:25:44 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 960D15C0318;
	Mon, 22 Jan 2024 23:25:42 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Mon, 22 Jan 2024 23:25:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:subject:subject:to:to; s=fm2;
	 t=1705983942; x=1706070342; bh=45+1oXceGikZvQxwJfaaf8EGXsa5wr/Q
	8SOh/sMefXo=; b=rU9DX3UA6Ldi7CBk/PlLyV0Txp9+MdMKn9eR2Qs+X+tvvqWd
	dk9/lOw9dCssfusMnld5S/+LfhwDNakIintK71RDpHfp/pgUrC6MQgBCTsqwwOGv
	1AOIuwPa4tgl2EvRAOmzRSVT6GgI/PlYsDAYQl//aSliNumw6i6x8xyaYnqa/FKV
	pY1YleSkBO4FwXIbxv2syLFJBWHjBovXcPhmKCO8gEaVXKi5Zih3g6qDF1UyURjb
	KeC85MHvHmABa/PON7OykZpKPg4eGcx4ra7keOi4ILjh078uIZRmYAtibvgKsb3+
	7AqZrnYy2QYrCTYOSrSqz/pix2pViUPToSm8Gw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1705983942; x=
	1706070342; bh=45+1oXceGikZvQxwJfaaf8EGXsa5wr/Q8SOh/sMefXo=; b=w
	uRjf3WX+KkUa1Yhniz0KKiJ6n2X83yveTNlB6o6OofO3BlN3fr71wJLSd56qXZm0
	gT3HdgL9W9eYbOE6SPzZtf6GUuEamYPBOmpX9eJ9ej6YmH8EhF9TB9dhvFz7Vy/x
	WE0wO1LN+r317f1H+QFgeebuJIUFeZhedRZyzpqld6O21CsiHheswzkssqnS8wuH
	FcykcBJVKNpi5zZnOE0NSd6XMKJz3J4zBhGs7p+W23W3rmvZlI9ySYOV4VDdlszj
	u+BmYaoOVLPDXQI3jJmaQrHdVSF+VS0ABO6gC+EvppZwmqo+MClcZxIOvY+x3nQO
	wJqul1S1gpdKzZbClEt4g==
X-ME-Sender: <xms:xj-vZez8bhCJTDZK5KxpbJqvM64DwozZ5xZPzkeYhe7KBPk8tzyQ7g>
    <xme:xj-vZaTUA9DpUOj23hcmKqLVEvAdrP4Jw609l7veT7cGGvO0a1T-QgbA9_3FTN7Yy
    4Cmjp2aJw>
X-ME-Received: <xmr:xj-vZQU6PTnnUof_aVallJWT2Udea7q5cOgr4oN1EKXAVBuCLDkHLzim2FFLSOCxtYZNpTu1mIL6g-unhopgDb3LXHFGqyAvkSLUZA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdekjedgieelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepkfffgggfuffvvehfhfgjtgfgsehtkeertddtvdejnecuhfhrohhmpefvihhm
    ucfnuhhnnhcuoehtihhmsehfvggrthhhvghrthhophdrohhrgheqnecuggftrfgrthhtvg
    hrnhepheejjeeuueejfeektdfhteelffdvjedviefhhfefieelleeiueeitdfhheektdeh
    necuffhomhgrihhnpegsohhothhlihhnrdgtohhmnecuvehluhhsthgvrhfuihiivgeptd
    enucfrrghrrghmpehmrghilhhfrhhomhepthhimhesfhgvrghthhgvrhhtohhprdhorhhg
X-ME-Proxy: <xmx:xj-vZUiesXhZuOQAS1bu9jVn6lLI6Hw9_iJBMaHJbbZXhGn9Ciiz1g>
    <xmx:xj-vZQDZeI7b224Zv0_dZR68SQuqxxsN2pes7yCjLuykcPMDCsooNA>
    <xmx:xj-vZVIBUcn_y9SS8UiliUPvpkqQ8_7zfE47Qg8iU5g6t9dD0PFrfg>
    <xmx:xj-vZZIMUlcXooeuUvt8pGWecGuASUYxKnCm_Dkp2ANQaiFxmtN_Sw>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 22 Jan 2024 23:25:37 -0500 (EST)
Message-ID: <9e5cace9-8725-45a4-a55f-f996a561c9a4@feathertop.org>
Date: Tue, 23 Jan 2024 15:25:35 +1100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] dt-bindings: rockchip: rk809: Document audio codec
 clock
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-rockchip@lists.infradead.org, conor.dooley@microchip.com,
 robh+dt@kernel.org, devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org, Chris Zhong <zyw@rock-chips.com>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Lee Jones <lee@kernel.org>, Zhang Qing <zhangqing@rock-chips.com>,
 linux-kernel@vger.kernel.org
References: <20240120135529.899403-1-tim@feathertop.org>
 <20240120135529.899403-4-tim@feathertop.org>
 <2e9ae099-18a3-4e22-8868-931d41c81f3f@linaro.org>
From: Tim Lunn <tim@feathertop.org>
In-Reply-To: <2e9ae099-18a3-4e22-8868-931d41c81f3f@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_202543_538192_113CB64F 
X-CRM114-Status: GOOD (  14.77  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Ck9uIDEvMjIvMjQgMTk6MTYsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gT24gMjAvMDEv
MjAyNCAxNDo1NSwgVGltIEx1bm4gd3JvdGU6Cj4+IFJvY2tjaGlwIFJLODA5IHNoYXJlcyB0aGUg
c2FtZSBhdWRpbyBjb2RlYyBibG9jayBhcyB0aGUgcms4MTcgbWZkLCBhbmQKPiBXaGF0IHJrODE3
IGhhcyBhbnl0aGluZyB0byBkbyB3aXRoIHRoaXM/CgpUaGUgZXhpc3RpbmcgY29kZWMgZHJpdmVy
IGluIGxpbnV4IGFscmVhZHkgaXMgZnJvbSB0aGUgcms4MTcgYW5kIHRodXMgCmNhbGxlZCByazgx
NywgaG93ZXZlcgp0aGF0IGRyaXZlciBpcyBhbHNvIGNvbXBhdGlibGUgd2l0aCB0aGUgY29kZWMg
aW4gcms4MDkuCgo+Cj4+IGlzIGNvbXBhdGlibGUgd2l0aCB0aGUgZXhpc3Rpbmcgcms4MTdfY29k
ZWMgZHJpdmVyLiBUaGlzIHBhdGNoCj4gUGxlYXNlIGRvIG5vdCB1c2UgIlRoaXMgY29tbWl0L3Bh
dGNoL2NoYW5nZSIsIGJ1dCBpbXBlcmF0aXZlIG1vb2QuIFNlZQo+IGxvbmdlciBleHBsYW5hdGlv
biBoZXJlOgo+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y1LjE3LjEvc291cmNl
L0RvY3VtZW50YXRpb24vcHJvY2Vzcy9zdWJtaXR0aW5nLXBhdGNoZXMucnN0I0w5NQpJIHdpbGwg
Y2hlY2sgdGhpcyBhcyB3ZWxsLgo+Cj4+IGludHJvZHVjZXMgdGhlIGNsb2NrIHJlcXVpcmVkIGZv
ciB0aGUgYXVkaW8gY29kZWMuCj4+Cj4+IFRoaXMgY2xvY2sgcHJvdmlkZXMgdGhlIEkyUyBtYXN0
ZXIgY2xvY2sgZm9yIHRoZSBhdWRpbyBkYXRhLiBUaGUgY29kZWMKPj4gZHJpdmVyIGZpbmRzIHRo
ZSBjbG9jayBieSB0aGUgbmFtZSAibWNsayIgYW5kIHdpbGwgZmFpbCB0byByZWdpc3RlciBpZgo+
PiB0aGlzIGlzIG1pc3NpbmcuIENsb2NrLW5hbWVzIGlzIGtlcHQgaGVyZSB0byBrZWVwICBjb21w
YXRpYmlsaXR5IHdpdGggdGhlCj4+IGV4aXNpdG5nIGRyaXZlciBBQkkgYW5kIGFsc28gdG8gYmUg
Y29uc2lzdGVudCB3aXRoIHRoZSByazgxNyBiaW5kaW5nLgo+IFR5cG8uCj4KPiBBbHNvLCB3aGF0
IGNvbnNpc3RlbmN5IHdpdGggcms4MTcgZHJpdmVyPwpUaGUgcms4MTcgY29kZWMgZHJpdmVyIHRo
YXTCoCBhbHJlYWR5IGV4aXN0cyBpbiBtYWlubGluZSBsaW51eCB0cmVlLgo+Cj4gSSByZWFsbHkg
ZG8gbm90IHVuZGVyc3RhbmQgd2hpY2ggcHJvYmxlbSB5b3UgYXJlIHNvbHZpbmcgaGVyZS4KSSB3
aWxsIGZpeCB0aGUgdHlwbyBhbmQgdHJ5IHRvIGNsYXJpZnkgY29tbWl0IG1lc3NhZ2UgZnVydGhl
ci4KPgo+Cj4KPiBCZXN0IHJlZ2FyZHMsCj4gS3J6eXN6dG9mCj4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
