Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFE46C44506
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jul 2026 09:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1r1iagQk/C3cZaTpHcWpc7Gv25tIqo99PepFdvRXhGA=; b=dU4DcTDX84nR4V
	ONVKFGVyDZJdTuRO39FO75HwyZW0wierR8ouFnZeGTkeKcC2je9CnWyOil6ggsNboj5gYgTrlZ+ud
	IkoFDUacGXCJBvVbAwBOOdloLmIoun9Lon4sXW0mVcM9gEEIkiFX3QEPkskPb3oXvsHia+EZpbmL8
	CWYTwoj8+5s3chpf69R4Qa3EvSSi6eR5VnLeGehLOEgFIablAEj0GjhUKkRagqdAmDMr5rMR8XnML
	/1QlxiVtW5VBN6hxr7WDF+UIZL3+0ciwSyRSj0wvIGVXuXljmMMdICoGbcNWDYDoYR3hI7qMEtr0T
	eBMwJZzyPSwsqNqjBSmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wi7Yp-00000004a4T-2ApX;
	Fri, 10 Jul 2026 09:30:19 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wi7Ym-00000004a2L-3v55;
	Fri, 10 Jul 2026 09:30:18 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1783675811; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=D9kUGQ255xhzZeQWelttSRUJxIH/MpLmXjGqKcC6Ovl5oHOIB2geAYmrjpj9UODZLafz4XVfbUeRE1Oypw5yU9N+nYLT56+FZfmaeOzags7Di/XoaJM0L/hm/W/ubEK5cBgbDB9zI5CZ7YstNJ8sBc4k2LqZJizEYptjkzSNv+A=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1783675811; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=6hb5I4/2IdOfdGyllTI2W7LkWVdlsgKxVqV5mnOeQwE=; 
	b=SipXuD268ETrbmfsS5UXTmwpCTtgiwtUMgd+N5QdDCyhiYrxDBvGBdNJ2ZWLyz3jcoFlmmvcOMltXsGSicK6O+6BzHUtiZDaYlL4olwEopIYO+QvWHuBRx+qZl1vrqNWG4G18hmEsLAdsJyx8utWvgHCfQH7A2fJtfgkX1j4T0I=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=michael.riesch@collabora.com;
	dmarc=pass header.from=<michael.riesch@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1783675811;
	s=zohomail; d=collabora.com; i=michael.riesch@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=6hb5I4/2IdOfdGyllTI2W7LkWVdlsgKxVqV5mnOeQwE=;
	b=T5Q6KMbp3jUFiOxL9g1l69BSL9Db9tKLBcOrZtqzbd4ZnRJNwGMuaaipJirsB4Ih
	zxU0w3wJS8vGnNlSW1La9QlxUU70ihBJwwGfOdmnAh+HG/srEQ4u6/gBZbxxDcU/tZ3
	Mw+TY97hFcHSK778cbqEaK1AL8z7goCZD22kuaOQ=
Received: by mx.zohomail.com with SMTPS id 1783675810094635.854368220136;
	Fri, 10 Jul 2026 02:30:10 -0700 (PDT)
Message-ID: <04e9a542-a05d-4608-ac00-d40da4763f45@collabora.com>
Date: Fri, 10 Jul 2026 11:30:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] dt-bindings: phy: rockchip-inno-csi-dphy: add
 rockchip,clk-lane-phase property
To: Gerald Loacker <gerald.loacker@wolfvision.net>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20260630-feature-mipi-csi-dphy-4k60-v3-0-176792ab71fa@wolfvision.net>
 <20260630-feature-mipi-csi-dphy-4k60-v3-2-176792ab71fa@wolfvision.net>
Content-Language: en-US
From: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <20260630-feature-mipi-csi-dphy-4k60-v3-2-176792ab71fa@wolfvision.net>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_023017_019750_F9DF2F60 
X-CRM114-Status: GOOD (  12.00  )
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

SGkgR2VyYWxkLAoKT24gNi8zMC8yNiAwOTo0OCwgR2VyYWxkIExvYWNrZXIgd3JvdGU6Cj4gQWRk
IHN1cHBvcnQgZm9yIHRoZSBvcHRpb25hbCByb2NrY2hpcCxjbGstbGFuZS1waGFzZSBkZXZpY2Ug
dHJlZSBwcm9wZXJ0eQo+IHRvIGFsbG93IGJvYXJkLXNwZWNpZmljIHR1bmluZyBvZiB0aGUgY2xv
Y2sgbGFuZSBzYW1wbGluZyBwaGFzZSBmb3IKPiBpbXByb3ZlZCBzaWduYWwgaW50ZWdyaXR5IGFj
cm9zcyBzdXBwb3J0ZWQgZGF0YSByYXRlcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBHZXJhbGQgTG9h
Y2tlciA8Z2VyYWxkLmxvYWNrZXJAd29sZnZpc2lvbi5uZXQ+CgpBY2tlZC1ieTogTWljaGFlbCBS
aWVzY2ggPG1pY2hhZWwucmllc2NoQGNvbGxhYm9yYS5jb20+CgpUaGFua3MgYW5kIGJlc3QgcmVn
YXJkcywKTWljaGFlbAoKPiAtLS0KPiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3JvY2tj
aGlwLWlubm8tY3NpLWRwaHkueWFtbCAgICAgICAgfCAxMCArKysrKysrKysrCj4gIDEgZmlsZSBj
aGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcm9ja2NoaXAtaW5uby1jc2ktZHBoeS55YW1sIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9yb2NrY2hpcC1pbm5vLWNzaS1kcGh5
LnlhbWwKPiBpbmRleCAwMzk1MGIzY2FkMDhjLi45MTNhYTY4OGMwYWU5IDEwMDY0NAo+IC0tLSBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcm9ja2NoaXAtaW5uby1jc2kt
ZHBoeS55YW1sCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9y
b2NrY2hpcC1pbm5vLWNzaS1kcGh5LnlhbWwKPiBAQCAtNTYsNiArNTYsMTYgQEAgcHJvcGVydGll
czoKPiAgICAgIGRlc2NyaXB0aW9uOgo+ICAgICAgICBTb21lIGFkZGl0aW9uYWwgcGh5IHNldHRp
bmdzIGFyZSBhY2Nlc3MgdGhyb3VnaCBHUkYgcmVncy4KPiAgCj4gKyAgcm9ja2NoaXAsY2xrLWxh
bmUtcGhhc2U6Cj4gKyAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy91
aW50MzIKPiArICAgIG1pbmltdW06IDAKPiArICAgIG1heGltdW06IDcKPiArICAgIGRlZmF1bHQ6
IDMKPiArICAgIGRlc2NyaXB0aW9uOgo+ICsgICAgICBDbG9jayBsYW5lIHNhbXBsaW5nIHBoYXNl
IHNlbGVjdGlvbiAoaGFyZHdhcmUgdGFwIGluZGV4IDDigJM3KS4gRWFjaCBzdGVwCj4gKyAgICAg
IGNvcnJlc3BvbmRzIHRvIGFuIGFwcHJveGltYXRlbHkgNDAgcHMgZGVsYXkgYXMgZGVzY3JpYmVk
IGluIHRoZSBoYXJkd2FyZQo+ICsgICAgICBzcGVjaWZpY2F0aW9uLgo+ICsKPiAgcmVxdWlyZWQ6
Cj4gICAgLSBjb21wYXRpYmxlCj4gICAgLSByZWcKPiAKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
