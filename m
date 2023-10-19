Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0824DCDB485
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Oct 2023 15:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KaP1X8k4AWK2S5cspJk5mqWvxIOWEXRerXT5q9Z7wu8=; b=ofRvdC+oLHZN8g
	HhpzesqZnAETrdntdoSTOYEToJQC66PLi7X4JXKMmO7o1lotpZjddhoRXbOt4Ev0lyXzFrFtSnQFd
	eselrYaBhaF8n3GSEcCML1IJED5M+D1jmm5v93UEZhlSzIEPpCbyivO+lR0kfTxy12lB9BJamIzK1
	fAijQ5KMqAyEkfF+s16BrGtNMJuzze9oWa3mGLMRbd1glvIIVvS8jcbE4EsW3RXuatWc1ywL13ab7
	88ltnYl0IQC63+PgeS9GWDSB5sjvJKayUwwFIthYul3kkUH/YHFUgDG8AK1atlHaW4arrP7CenGo8
	RvO2TR5jSJbCsYh+ZmEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtUWI-0009MN-0r;
	Thu, 19 Oct 2023 15:01:06 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtUWF-0009Ln-05;
	Thu, 19 Oct 2023 15:01:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4FA966160D;
	Thu, 19 Oct 2023 15:01:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD17AC433C8;
	Thu, 19 Oct 2023 15:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697727662;
	bh=ckX2UtcWji/fAfsudtfTrp/XAtITIofDRoqCMRked4M=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=ACKGx8vaGZp5Ze01+74sE+22Pobh6aMylWsImV6vsPhnG+uiB3C2zgq2/Ih0/Rfha
	 RDwK3DKgL+5Y9EGXX8RaPfM7vEvGy5jJ2yAQx+8wfVK7LX66jTHXQEiPBaMrC+IU5h
	 E2HPLISHQ1JkYka1jNL/+c64xC6DeKUFzNwIi0LR4zxe0Koe19RKitmqqG4VHSdNev
	 2iWNHizAKPvpVUE4Mrha85kJ2r1YANHdnbcvM819qyS7RXJtYcM5g2rvS14VeE/blo
	 8E+wBsOCXZCrUJ5ccx40EPH+frImPq0LcTiyq/uY3//AnhorfG9y0LBIMnvwNMshtl
	 GLuI25YBSwPqw==
Date: Thu, 19 Oct 2023 16:00:56 +0100
From: Lee Jones <lee@kernel.org>
To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/4] dt-bindings: mfd: rk8xx: Deprecate
 rockchip,system-power-controller
Message-ID: <20231019150056.GE2424087@google.com>
References: <20231010174138.1888396-1-megi@xff.cz>
 <20231010174138.1888396-2-megi@xff.cz>
 <20231019102945.GA2424087@google.com>
 <a7b6115e-9490-47cf-8054-ac616dea62fd@linaro.org>
 <20231019135032.GD2424087@google.com>
 <ejqkt2t647sok6q2z2civde54xztopwqc5srksjcmosikstiuv@ci4f643m7hxy>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ejqkt2t647sok6q2z2civde54xztopwqc5srksjcmosikstiuv@ci4f643m7hxy>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231019_080103_111379_041F6BAF 
X-CRM114-Status: GOOD (  19.25  )
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

T24gVGh1LCAxOSBPY3QgMjAyMywgT25kxZllaiBKaXJtYW4gd3JvdGU6Cgo+IE9uIFRodSwgT2N0
IDE5LCAyMDIzIGF0IDAyOjUwOjMyUE0gKzAxMDAsIExlZSBKb25lcyB3cm90ZToKPiA+IAo+ID4g
T24gVGh1LCAxOSBPY3QgMjAyMywgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiA+IAo+ID4g
PiBPbiAxOS8xMC8yMDIzIDEyOjI5LCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiA+ID4gT24gVHVlLCAx
MCBPY3QgMjAyMywgT25kxZllaiBKaXJtYW4gd3JvdGU6Cj4gPiA+ID4gCj4gPiA+ID4+IEZyb206
IE9uZHJlaiBKaXJtYW4gPG1lZ2lAeGZmLmN6Pgo+ID4gPiA+Pgo+ID4gPiA+PiBEZXByZWNhdGUg
c3VwcG9ydCBmb3IgdGhpcyBwcm9wZXJ0eSBpbiBmYXZvciBvZiBzdGFuZGFyZAo+ID4gPiA+PiBz
eXN0ZW0tcG93ZXItY29udHJvbGxlciBvbmUuCj4gPiA+ID4+Cj4gPiA+ID4+IFNpZ25lZC1vZmYt
Ynk6IE9uZHJlaiBKaXJtYW4gPG1lZ2lAeGZmLmN6Pgo+ID4gPiA+PiAtLS0KPiA+ID4gPj4gIERv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvcm9ja2NoaXAscms4MDUueWFtbCB8
IDMgKysrCj4gPiA+ID4+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3Jv
Y2tjaGlwLHJrODA4LnlhbWwgfCAzICsrKwo+ID4gPiA+PiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL21mZC9yb2NrY2hpcCxyazgwOS55YW1sIHwgMyArKysKPiA+ID4gPj4gIERv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvcm9ja2NoaXAscms4MTcueWFtbCB8
IDMgKysrCj4gPiA+ID4+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3Jv
Y2tjaGlwLHJrODE4LnlhbWwgfCAzICsrKwo+ID4gPiA+PiAgNSBmaWxlcyBjaGFuZ2VkLCAxNSBp
bnNlcnRpb25zKCspCj4gPiA+ID4gCj4gPiA+ID4gSSBkb24ndCBzZWUgYW55dGhpbmcgd3Jvbmcg
d2l0aCBpdC4KPiA+ID4gPiAKPiA+ID4gPiBJdCB3b3VsZCBiZSBuaWNlIHRvIGhhdmUgYSBEVCBB
Y2sgdGhvdWdoLgo+ID4gPiAKPiA+ID4gUm9iIGdhdmUgcmV2aWV3IG9uIDEydGggT2N0Lgo+ID4g
Cj4gPiBUaGlzIG5ldyB2ZXJzaW9uIHdhcyBzdWJtaXR0ZWQgb24gdGhlIDEwdGggT2N0Lgo+IAo+
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMTY5NzE0MDgxMzUzLjE1ODc1MzYuMjc2NzE1
MDI5ODIwODI1OTk3Ni5yb2JoQGtlcm5lbC5vcmcvCgpQbGVhc2UgY29sbGVjdCBpdCB1cCBhbG9u
ZyB3aXRoIGFueSBvdGhlciB0YWdzIHlvdSd2ZSByZWNlaXZlZCBhbmQKc3VibWl0IGEgW1JFU0VO
RF0gc2V0LiAgVGhhbmtzLgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
