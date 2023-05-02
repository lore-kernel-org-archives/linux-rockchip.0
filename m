Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C59CBC77B7E
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 May 2023 12:50:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lu1TOoyDFDVYgI/GUm34KWOkYBVN/VPMVveHjDQ2Org=; b=jhHSvNOywlQ8gW
	gFxVQ+GkjRAEPxjAMYQphYRujreIT8Ro45Kz+H/iOSBWRGVaOT5T/aabNNu420KkfEuslEA4NFdMn
	v+PK6m7fgxbzpSq5ZJ9UfDTrATqYJe5HCJoM07KgrMhe1ZCUZ51k2hW39NMZVlERGBsfsqKMRTKQD
	bhc6dXlEEHCmJYpxHTCbFDQAMk5+iypQ4vTe0PHh16EendvtED1nMgDIs8Ik3SOwZ/ptSEeCHGmtN
	U02v7GGrfB0EPfgMFqZ+mhK+OMWRc2VStN6LfdsWdIZT5LgRpx2e1M/2VJCMCrdLN/gNz63cyfGRM
	ehWhxDKXwJPWDxUtTlcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptpS8-001VW7-1Z;
	Tue, 02 May 2023 12:49:56 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptpS4-001VVC-1X;
	Tue, 02 May 2023 12:49:53 +0000
Received: from [192.168.1.90] (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 837F46602121;
	Tue,  2 May 2023 13:49:50 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1683031791;
	bh=1SBHvxpiiP3vO8FDcUxSdgWcAeK19kTJhEfXoSg3Bz8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=lVX3TX5nOP8T7DAc8DnTniZmRwQkSATanSOambI0L6/HJZCEogsIFtChW2g8t24bU
	 8KHdn8iVUlYv9kBuDsz0gI1UzjMBwHtUsvO+mhG5O+5g+aZnJNXJssb6WiPYtN47Rm
	 f0jJjslUabz66qmeaGQgvzakgmbGyIq+tRd2BTaaaV2Pb/jynGbtfzOQm7bCV9mZMh
	 /sDwpb07Ht05krpJVuU8BW4Jyk4Pey1OoFD/dDTVyefXM+0xA3Ehq4FG484w3MlLxj
	 cGWVHbZh+SvUHODfwkwJbGf2nvOORl6R+nVjv54/gBNzHRTDpawHaL6KKRponweb6J
	 Sm9+7MvfEGnAg==
Message-ID: <70d71afc-5191-2995-9975-7a2871c226aa@collabora.com>
Date: Tue, 2 May 2023 15:49:47 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH 3/8] nvmem: rockchip-otp: Add clocks and reg_read to
 rockchip_data
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Finley Xiao <finley.xiao@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20230501084401.765169-1-cristian.ciocaltea@collabora.com>
 <20230501084401.765169-4-cristian.ciocaltea@collabora.com>
 <6064284.AJdgDx1Vlc@diego>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <6064284.AJdgDx1Vlc@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_054952_640808_C378D097 
X-CRM114-Status: GOOD (  12.07  )
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

T24gNS8yLzIzIDExOjQ3LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBBbSBNb250YWcsIDEuIE1h
aSAyMDIzLCAxMDo0Mzo1NSBDRVNUIHNjaHJpZWIgQ3Jpc3RpYW4gQ2lvY2FsdGVhOgo+PiBJbiBw
cmVwYXJhdGlvbiB0byBzdXBwb3J0IG5ldyBSb2NrY2hpcCBPVFAgbWVtb3J5IGRldmljZXMgd2l0
aCBkaWZmZXJlbnQKPj4gY2xvY2sgY29uZmlndXJhdGlvbnMgYW5kIHJlZ2lzdGVyIGxheW91dCwg
ZXh0ZW5kIHJvY2tjaGlwX2RhdGEgc3RydWN0Cj4+IHdpdGggdGhlIHJlbGF0ZWQgbWVtYmVyczog
Y2xvY2tzLCBudW1fY2xrcywgcmVnX3JlYWQuCj4+Cj4+IEFkZGl0aW9uYWxseSwgdG8gYXZvaWQg
bWFuYWdpbmcgcmVkdW5kYW50IGRyaXZlciBkYXRhLCBkcm9wIG51bV9jbGtzCj4+IG1lbWJlciBm
cm9tIHJvY2tjaGlwX290cCBzdHJ1Y3QgYW5kIHVwZGF0ZSBhbGwgcmVmZXJlbmNlcyB0byBwb2lu
dCB0bwo+PiB0aGUgZXF1aXZhbGVudCBtZW1iZXIgaW4gcm9ja2NoaXBfZGF0YS4KPj4KPj4gU2ln
bmVkLW9mZi1ieTogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFi
b3JhLmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJzL252bWVtL3JvY2tjaGlwLW90cC5jIHwgNzkgKysr
KysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tCj4+ICAxIGZpbGUgY2hhbmdlZCwgNDkg
aW5zZXJ0aW9ucygrKSwgMzAgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L252bWVtL3JvY2tjaGlwLW90cC5jIGIvZHJpdmVycy9udm1lbS9yb2NrY2hpcC1vdHAuYwo+PiBp
bmRleCA5ZjUzYmNjZTJmODcuLmE1YjIzNGU2MDczNSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9u
dm1lbS9yb2NrY2hpcC1vdHAuYwo+PiArKysgYi9kcml2ZXJzL252bWVtL3JvY2tjaGlwLW90cC5j
Cj4+IEBAIC01NCwyMSArNTQsMTkgQEAKPj4gIAo+PiAgI2RlZmluZSBPVFBDX1RJTUVPVVQJCQkx
MDAwMAo+PiAgCj4+ICtzdHJ1Y3Qgcm9ja2NoaXBfZGF0YSB7Cj4+ICsJaW50IHNpemU7Cj4+ICsJ
Y29uc3QgY2hhciAqIGNvbnN0ICpjbG9ja3M7Cj4+ICsJaW50IG51bV9jbGtzOwo+IAo+IG5pdDog
bWlnaHQgYmUgbmljZSB0byB1c2UgZWl0aGVyICJjbG9ja3MiIG9yICJjbGtzIiBhcyBwYXJ0IGZv
ciBib3RoIG5hbWVzCgpJbmRlZWQsIHdpbGwgaGFuZGxlIHRoaXMgaW4gdjIuCgo+IG90aGVyIHRo
YW4gdGhhdAo+IFJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoK
VGhhbmtzLApDcmlzdGlhbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
