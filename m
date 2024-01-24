Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66041C47258
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jan 2024 01:04:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AMdDlPtgXwK9+TmBU5zLGf9sojZ71rVdR0ugamvp21g=; b=OQ+EZG5+CZ2xgm
	YPT1+eB0LuyM1i2aoQCox/+QDCpe2Ut/FahtdnwWCGp2oTF3SSf5y7YHiFd4WdrNFlz+g2KIdulNX
	KnqkCtYs4KWpO60nPBKHjx0GRy9rcDCjgvx+wfXZugnG7LQN3aVedWNSHS34szD2iYc8v0PlGRpsY
	6aUeKyDtknbgotMAmi2Cdr+RvEeqvrcNd74L4//5cvbFXQZ4NF0+9y+eVEPUBbibLP+3plPBYMyaM
	isReAJoHT5CcPeWqib/blR6SbgqJ8Igitv25eQGulqvMVLoWUYSvsFsKidSh+obNnbb8yCp+ILuk1
	g/+rb5NNZ3NNZ87/NEsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSRgQ-000yQ5-2Z;
	Wed, 24 Jan 2024 01:04:02 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSRgM-000yNb-1c;
	Wed, 24 Jan 2024 01:03:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1706058236;
	bh=ehveRBNnG2mx2K0XMQwz5dn4O/JDiS3/LjXos/xx6I0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=IBtheqpvdmfu+c2cwYXyujjJjpot42tc5/ys79dH33xGT4MF32SvIMJHCy1VmBhIP
	 1iW/HY5gVrfSNZMb0rh9/mJLyRHx+gqSc3NoUpvMnuxVo2CfVFjy2vIC2ZiDAUK+wn
	 EpLqrOlIJcg4V56Ewdh2JAoKOF1xnfCXVdNzdufuZePLVwxD3Sl6e4nClFYrZMLFhr
	 rDRcTmMSWlV3qc/1a9vo3vFifDpFj8fjiDMj4K58hACXlTC1v3nNTbfm209jUInH6A
	 GzSnSbgFIM6US3giJsKhTpWDl8WEDwCLZy7u+kV0UalL1FUx+coUAt61ucyxnBWb0o
	 p3JtHoK5+KMVA==
Received: from [100.115.223.179] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id D06E33782074;
	Wed, 24 Jan 2024 01:03:55 +0000 (UTC)
Message-ID: <724284f0-b387-4b81-9043-f73df6c9f697@collabora.com>
Date: Wed, 24 Jan 2024 03:03:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] Add support for RK3588 HDMI/DP Combo PHY
Content-Language: en-US
To: Andy Yan <andy.yan@rock-chips.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>,
 Johan Jonker <jbx6244@gmail.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Algea Cao <algea.cao@rock-chips.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20240119193806.1030214-1-cristian.ciocaltea@collabora.com>
 <417281cd-23b1-4948-8c5a-b9820dff65aa@collabora.com>
 <a7e5304a-1cfd-4f38-8708-bfca30f0ef7f@rock-chips.com>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <a7e5304a-1cfd-4f38-8708-bfca30f0ef7f@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_170358_737532_A3AA8372 
X-CRM114-Status: GOOD (  14.69  )
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

T24gMS8yMi8yNCAxMjoxMCwgQW5keSBZYW4gd3JvdGU6Cj4gSGkgQ3Jpc3RpYW46Cj4gCj4gT24g
MS8yMC8yNCAwNzo0MSwgQ3Jpc3RpYW4gQ2lvY2FsdGVhIHdyb3RlOgo+PiBPbiAxLzE5LzI0IDIx
OjM4LCBDcmlzdGlhbiBDaW9jYWx0ZWEgd3JvdGU6Cj4+PiBBZGQgZHJpdmVyIGFuZCBiaW5kaW5n
cyB0byBzdXBwb3J0IHRoZSBSb2NrY2hpcCBIRE1JL2VEUCBUWCBDb21ibyBQSFkKPj4+IGZvdW5k
IG9uIFJLMzU4OCBTb0MuCj4+Pgo+Pj4gVGhlIFBIWSBpcyBiYXNlZCBvbiBhIFNhbXN1bmcgSVAg
YmxvY2sgYW5kIHN1cHBvcnRzIEhETUkgMi4xIFRNRFMsIEZSTAo+Pj4gYW5kIGVEUCBsaW5rcy4K
Pj4+Cj4+PiBUaGUgSERNSSBsaW5rIGhhcyBiZWVuIHRlc3RlZCBvbiBSb2NrIDVCIGFuZCBFVkIx
IGJvYXJkcy4KPj4KPj4gSSBtaXNzZWQgdG8gaGlnaGxpZ2h0IHRoZXJlIGlzIG5vIGVEUCBzdXBw
b3J0IHByb3ZpZGVkIGJ5IHRoZSBjdXJyZW50Cj4+IGltcGxlbWVudGF0aW9uLsKgIERvd25zdHJl
YW0ga2VybmVsIGhhcyBhIHNlcGFyYXRlIGRyaXZlciBmb3IgdGhhdCBhbmQgYXQKPj4gdGhlIG1v
bWVudCBJIGRvbid0IGhhdmUgdGhlIGhhcmR3YXJlIHRvIHdpcmUgdGhpcyB1cC4KPj4KPj4gV2ls
bCBpbmNsdWRlIHRoaXMgc3RhdGVtZW50IGluIHYyLgo+IAo+IFRoZSBQSFkgaXMgdXNlZCBmb3Ig
SERNSSBhbmQgZURQIG9uIHJrMzU4OCwgYW5kIHNob3VsZCB1c2VkIGJlIGV4Y2x1c2l2ZWx5Lgo+
IHNvIEkgdGhpbmsgc2hvdWxkIHMvRFAvZURQLyBpbsKgIGFsbCBkZXNjcmlwdGlvbi4KClJpZ2h0
LCB3aWxsIG1ha2UgdGhpcyBjb25zaXN0ZW50LgoKVGhhbmtzLApDcmlzdGlhbgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
