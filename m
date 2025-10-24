Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B259CCD1A5
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Oct 2025 08:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2aycQoU99+Mn5YaMmX8ys91iTK5l02DMg2/wpB+0oO0=; b=gkfp5sXmo+SYdl
	EslEAJB1iCQ7tdyvwrX2sqPKMS8UrQYXfUJJyyMAJo9ROB2M/OffLmU3Nn13HqM5LYD8cPGippKrC
	/hJXbRcCb8CWU9tkbW2HXSStKFiy2mN6EgPF/G9NaS10FPbfg5knNQSkfnEMjqRePtmaALgP3/PhX
	e4+ZhyvZOZ1GF6yL/aPtaJBfYfTT4mzEw3e1Gzmr/CPKvEb4x8ZuoSHv/xzfI0AG1gSy9lu4PGuZa
	iDKl8rZ00D1ei2vVu/ghgw1HpbRtOcS2nU7djia090dw61fVlo89NFcTji0HxMiC+lNYVdO70ofYB
	i6e6zmQSrPOrvafOt0Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCCuy-00000008dtr-0Nxx;
	Fri, 24 Oct 2025 08:13:00 +0000
Received: from mail-m21466.qiye.163.com ([117.135.214.66])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCCuv-00000008dsr-0lPN;
	Fri, 24 Oct 2025 08:12:58 +0000
Received: from [172.16.12.149] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 270f1f398;
	Fri, 24 Oct 2025 16:12:48 +0800 (GMT+08:00)
Message-ID: <9ec2189e-ec36-4cd8-9713-beb490b8297c@rock-chips.com>
Date: Fri, 24 Oct 2025 16:12:47 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/9] drm/bridge: Implement generic USB Type-C DP HPD
 bridge
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Yubing Zhang <yubing.zhang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Amit Sunil Dhamne <amitsd@google.com>, Dragan Simic <dsimic@manjaro.org>,
 Johan Jonker <jbx6244@gmail.com>, Diederik de Haas <didi.debian@cknow.org>,
 Peter Robinson <pbrobinson@gmail.com>, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
References: <20251023033009.90-1-kernel@airkyi.com>
 <20251023033009.90-3-kernel@airkyi.com> <aPnrKFWTvpuRTyhI@kuha.fi.intel.com>
 <14b8ac71-489b-4192-92d6-5f228ff3881d@rock-chips.com>
 <aPoZhBdc1M6Qgfae@kuha.fi.intel.com>
 <6f769567-b383-4c79-b441-3dd84f21cdae@rock-chips.com>
 <aPsse5qVL84XOj8w@kuha.fi.intel.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <aPsse5qVL84XOj8w@kuha.fi.intel.com>
X-HM-Tid: 0a9a1547081303abkunmae71b56b2f4984
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQh9PTFYYHU8YGkNDQx0ZTx9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEtNQk
	tVSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=cbh7z5oMnHR/DLqyOIDZk4K7gXmeu0Z/ewCxVZLD2lfh51kbnP5gwdZNZ7a3inVN4NoC/E/hL4XmvOdj5FQ0/XmmJ78CkfSevEhzvOTjQ9VpmomjoQ1rpjyzol1iXhudUcEI++95744VHFl5SRJlcN0jA2NbRp7MwZ9xcoa3t1g=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=k9PZlmFs4+G6V09YuUs38/TEsI+fOADgB825HrzHznU=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251024_011257_475472_0071DDE6 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
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

T24gMTAvMjQvMjAyNSAzOjM2IFBNLCBIZWlra2kgS3JvZ2VydXMgd3JvdGU6Cgo+PiBBbm90aGVy
IHRoaW5nIGlzIHRoYXQgQ09ORklHX0RSTV9BVVhfSFBEX0JSSURHRSBvcmlnaW5hbGx5IG5lZWRl
ZCB0byBiZQo+PiBzZWxlY3RlZCBieSBvdGhlciBtb2R1bGVzLiBXaXRoIHRoaXMgY2hhbmdlLCB3
ZSBhbHNvIG5lZWQgdG8gZXhwb3NlIGl0IGluCj4+IEtjb25maWcuCj4gU29ycnksIEkgZG9uJ3Qg
dW5kZXJzdGFuZCB0aGUgcHJvYmxlbSBoZXJlPyBXaGF0IGRvIHlvdSBuZWVkIHRvIGV4cG9zZQo+
IGluIEtjb25maWc/Cgpjb25maWcgRFJNX0FVWF9IUERfQlJJREdFCiDCoCDCoCB0cmlzdGF0ZQog
wqAgwqAgZGVwZW5kcyBvbiBEUk1fQlJJREdFICYmIE9GCiDCoCDCoCBzZWxlY3QgQVVYSUxJQVJZ
X0JVUwogwqAgwqAgaGVscAogwqAgwqAgwqAgU2ltcGxlIGJyaWRnZSB0aGF0IHRlcm1pbmF0ZXMg
dGhlIGJyaWRnZSBjaGFpbiBhbmQgcHJvdmlkZXMgSFBECiDCoCDCoCDCoCBzdXBwb3J0LgoKVGhl
IHRyaXN0YXRlIGhlcmUgaXMgZW1wdHksIHNvIG5vdyBpdCBjYW4gb25seSBiZSBzZWxlY3RlZCBi
eSBzb21lIFR5cGVDIGNvbnRyb2xsZXIgZHJpdmVycy4gSSB0aGluayBpdCdzIG5vdCBhIGJpZyBk
ZWFsLCBqdXN0IGV4cG9zZSB0aGlzIGl0ZW0uCgoKPgo+IHRoYW5rcywKPgotLSAKQmVzdCwKQ2hh
b3lpCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
