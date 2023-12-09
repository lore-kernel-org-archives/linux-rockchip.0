Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 950BAC4167B
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Dec 2023 01:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l0tY7AwZnSJ710GTm8fq3Px8JJWuR6SsgG0ywWmaumg=; b=lcENtyThTkTwHc
	RIl+hYvUNqMZY/5UnyFgeqICPH88x8zK4fuzEK0hBfocU37p0zvkkcG+GwoPuRrKKL3wnZIoClH6U
	lLzKDZwB+Wg914R8b4tX9bMxojPcznLVyZWTmqosWtIdCmZt/Pn6hlaCKCvBF6mlVaXmX0nmHrzko
	XH0qopIeertGNXjUjPzjsmKHMshzGOOYP4pCdWhRj8x1MJOLXR3P3c/8118GJI925T3VOZTzh5zT1
	v2Tqd4ZBlnrFPfJTsfJ6HqWQ92psK9wxS7SIZWJQ49yYT8GOTBGtU3jGo325qu9z/r4w0YXKuSMzw
	ROBOWx2wffGr9kK0AcxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBm7G-00Gtiv-28;
	Sat, 09 Dec 2023 01:26:50 +0000
Received: from mail-m25484.xmail.ntesmail.com ([103.129.254.84])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBm7D-00GtiT-2Z
	for linux-rockchip@lists.infradead.org;
	Sat, 09 Dec 2023 01:26:49 +0000
DKIM-Signature: a=rsa-sha256;
	b=BwufFL80XCbds4b0EwhNO3JkhrzAg11DySk5t/d0z26Lz8b/7R1KMxF3bj8BT+vJDKHTsgAgOehypOhLxtqlQheaA/4ZjRICQ+ZPWZBmJN1cp0YMYWqo2aqLDJ6o+rJ661UMdqq951sRFc9+ln+5nuKNRUeVki9SfQZ2x6JNpe4=;
	s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=1bTFE0EmmEHjiY9PXtz3uWCZdBxCozfW+7tytPfM1i0=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by mail-m12779.qiye.163.com (Hmail) with ESMTPA id 817C3780197;
	Sat,  9 Dec 2023 09:26:25 +0800 (CST)
Message-ID: <bbf4d7a5-a6f5-447a-9f3e-1cd6f2acc7c9@rock-chips.com>
Date: Sat, 9 Dec 2023 09:26:25 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 15/17] dt-bindings: iommu: rockchip: Add Rockchip
 RK3588
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andyshrk@163.com>
Cc: hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, chris.obbard@collabora.com
References: <20231207075906.651771-1-andyshrk@163.com>
 <20231207080235.652719-1-andyshrk@163.com> <4012684.R56niFO833@diego>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <4012684.R56niFO833@diego>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkxOHlZIHkIdQh0dTk9MSx1VEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8c4c2ed0f4b24fkuuu817c3780197
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Ky46Sww*HDw9S04JFhg2Sygp
	Fg0KChFVSlVKTEtJS0NOSkNNSEtLVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSU9DSDcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231208_172648_035687_943C5188 
X-CRM114-Status: UNSURE (   8.03  )
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

SGkgSGVpa286CgpPbiAxMi85LzIzIDAwOjI5LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBBbSBE
b25uZXJzdGFnLCA3LiBEZXplbWJlciAyMDIzLCAwOTowMjozNSBDRVQgc2NocmllYiBBbmR5IFlh
bjoKPj4gRnJvbTogQW5keSBZYW4gPGFuZHkueWFuQHJvY2stY2hpcHMuY29tPgo+Pgo+PiBBZGQg
YSBSb2NrY2hpcCBSSzM1ODggY29tcGF0aWJsZQo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBBbmR5IFlh
biA8YW5keS55YW5Acm9jay1jaGlwcy5jb20+Cj4gCj4gUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVi
bmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4gCj4gSW4gdGhlIG5leHQgaXRlcmF0aW9uLCBwbGVhc2Ug
c3BsaXQgdGhpcyBvdXQgaW50byBhIHNlcGFyYXRlIHBhdGNoIGFuZCBzZW5kCj4gaXQgdG8gdGhl
IGlvbW11K2R0IG1haW50YWluZXJzLgo+IAo+IFN1cHBvcnRpbmcgdGhlIGlvbW11cyBvbiByazM1
ODggY2FuIGJlIHJlYWxpemVkIHNlcGFyYXRlbHkgYW5kIHRoZQo+IHBhdGNoIG5lZWRzIHRvIGdv
IHRocm91Z2ggYSBzZXBhcmF0ZSB0cmVlIGFueXdheS4KCk9rYXksIEkgd2lsbCBzcGxpdCB0aGlz
IHBhdGNoIG91dCBvZiB0aGlzIHZvcDIgc2VyaWVzLCBkb2VzIHRoaXMgbWVhbiB0aGF0CkkgYWxz
byBuZWVkIHRvIHNwbGl0IG91dCB0aGUgaW9tbXUgZHQgbm9kZSBhcyBhIHNlcGFyYXRlIHBhdGNo
IGZyb20gY3VycmVudApQQVRDSDE2ID8KPiAKPiAKPiBUaGFua3MKPiBIZWlrbwo+IAo+IAo+IAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
