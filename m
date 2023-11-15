Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 742F8C47074
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Nov 2023 02:03:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8nPsHNX+XEOD0NYAgz9gJVr0hrD9fLAgawtMSInCOLI=; b=kXux+zEergSdPL
	TVlAwDmJDi0OmViKnrzNdapyqOmXun62E1JNz9mhIPwNEnpXAg8idGPDGm7oKo6yylnI0nDm0p5US
	jK9Xc2gPZgGC3RDwVQHbeekZKtl5hbg4MvjGZrKgqCP9n3oIdUvopHVXeUptIVVgLX5ksFD+3OfdD
	GtD1zXT/mOzVpyBZb2wYMDGhBRo/BV8bdhbPsz3jD35XSF1WcjCZMEa6PwTnIeIZmK5BxvJqUwEM6
	QJjc8WwcC3JPQNniIlFEPPUva+LiUphT7wRfBmmz8dCkrMXe1Wsqjk5HoV8YLcSJddilo8yIt2nYg
	OhN2ETq2jvjn8eBS6iIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r35FQ-00HDW2-1y;
	Wed, 15 Nov 2023 02:03:20 +0000
Received: from mail-m49222.qiye.163.com ([45.254.49.222])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r35FN-00HDVU-22
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Nov 2023 02:03:19 +0000
DKIM-Signature: a=rsa-sha256;
	b=cQL6kMnPwtYJPZmko8Td+ZApmq1jNNukWYBHvhKvj8hVAfTk5NonJgjr+fwoA5JD0T9dIkwepsZsXBEzLC9e9SnbD6pZSkoZhzwJUcGaCxwtNtF0Ovhz+S+ha2KfBAdwP/Bc24TNh5mMseFc+yMfg7kvzRquzlnqrOiRSLc3rBw=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=+0r5sfkCBJ8BY7925qHZXtbfyibcqRxLotDg68tTO/w=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by mail-m12779.qiye.163.com (Hmail) with ESMTPA id 9B9917801EF;
	Wed, 15 Nov 2023 10:02:42 +0800 (CST)
Message-ID: <b8605ecb-0244-4ff7-8338-759011dee1b3@rock-chips.com>
Date: Wed, 15 Nov 2023 10:02:42 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/11] drm/rockchip: vop2: Add support for rk3588
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andyshrk@163.com>
Cc: hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, chris.obbard@collabora.com, s.hauer@pengutronix.de
References: <20231114112534.1770731-1-andyshrk@163.com>
 <20231114112855.1771372-1-andyshrk@163.com> <7034316.0VBMTVartN@diego>
Content-Language: en-US
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <7034316.0VBMTVartN@diego>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxlKQ1YeTU9MHx1PQ0weSU9VEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8bd0b76993b24fkuuu9b9917801ef
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PyI6OCo5Fzw2TE4sPgMRN00*
	GRIaCRVVSlVKTEtLS0pITE1ITk5OVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSEpNTjcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231114_180317_871796_F54D892C 
X-CRM114-Status: GOOD (  15.80  )
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

SGkgSGVpa286CgpPbiAxMS8xNS8yMyAwNzozNCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gSGkg
QW5keSwKPgo+IEFtIERpZW5zdGFnLCAxNC4gTm92ZW1iZXIgMjAyMywgMTI6Mjg6NTUgQ0VUIHNj
aHJpZWIgQW5keSBZYW46Cj4+IEZyb206IEFuZHkgWWFuIDxhbmR5LnlhbkByb2NrLWNoaXBzLmNv
bT4KPj4KPj4gVk9QMiBvbiByazM1ODg6Cj4+Cj4+IEZvdXIgdmlkZW8gcG9ydHM6Cj4+IFZQMCBN
YXggNDA5NngyMTYwCj4+IFZQMSBNYXggNDA5NngyMTYwCj4+IFZQMiBNYXggNDA5NngyMTYwCj4+
IFZQMyBNYXggMjA0OHgxMDgwCj4+Cj4+IDQgNEsgQ2x1c3RlciB3aW5kb3dzIHdpdGggQUZCQy9s
aW5lIFJHQiBhbmQgQUZCQy1vbmx5IFlVViBzdXBwb3J0Cj4+IDQgNEsgRXNtYXJ0IHdpbmRvd3Mg
d2l0aCBsaW5lIFJHQi9ZVVYgc3VwcG9ydAo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBBbmR5IFlhbiA8
YW5keS55YW5Acm9jay1jaGlwcy5jb20+Cj4gbm90IGEgcmV2aWV3IHlldCwgYnV0IHdoZW4gdGVz
dGluZyBhbmQgdGhlIGRpc3BsYXkgc2V0cyBhIG1vZGUsCj4gSSBhbHdheXMgZ2V0IGEgYnVuY2gg
b2YKPgo+IAlyb2NrY2hpcC1kcm0gZGlzcGxheS1zdWJzeXN0ZW06IFtkcm1dICpFUlJPUiogUE9T
VF9CVUZfRU1QVFkgaXJxIGVyciBhdCB2cDAKPgo+IG1lc3NhZ2VzIGluIHRoZSBsb2cgKGluaXRp
YWwgbW9kZSB0byBjb25zb2xlLCBzdGFydGluZyBnbG1hcmsyIGZyb20gY29uc29sZSwKPiBzdG9w
cGluZyBnbG1hcmsyIHRvIHRoZSBjb25zb2xlKS4KPgo+IEknbSBub3Qgc3VyZSB3aGF0IGlzIHVw
IHdpdGggdGhhdCwgaGF2ZSB5b3Ugc2VlbiB0aGVzZSBtZXNzYWdlcyBhcyB3ZWxsCj4gYXQgc29t
ZSBwb2ludD8KClllcywgaXQgd2lsbCByYWlzZSBQT1NUX0JVRl9FTVBUWSB3aGVuIHNldCBhIG1v
ZGUswqAgaXQgbmVlZHMgc29tZSBmaXggCmxpa2UgWzBdOgoKCkkgc3RpbGwgdHJ5aW5nIHRvIGZp
bmQgYSBhcHByb3ByaWF0ZSB3YXkgdG8gZG8gaXQgd2l0aCB0aGUgdXBzdHJlYW0gCmNvZGUsIGFz
IGl0IGRvZXNuJ3QgYWZmZWN0IHRoZQoKcmVhbCBkaXNwbGF5IGZ1bmN0aW9uKEkgbXVzdCBhZG1p
dCB0aGF0IHRoZSBQT1NUX0JVRl9FTVBUWSBpcnEgaXMgdmVyeSAKYW5ub3lpbmcpLCBzbyBsIGxl
dMKgIGl0IGFzCgppdCBpcyBpbiB0aGUgY3VycmVudCB2ZXJzaW9uLgoKQnkgdGhlIHdheSwgY2Fu
IHlvdSBzZWUgdGhlIGdsbWFyazIgcmVuZGluZyBvbiB5b3VyIEhETUkgbW9uaXRvciBub3c/Cgpb
MF1odHRwczovL2dpdGh1Yi5jb20vRnJ1aXQtUGkva2VybmVsL2NvbW1pdC8yOWFmOTkzYjQ2ZjAy
NDM2MGU2ZDAyYzBkMjZjOWZkMzA1N2FhOTE4Cgo+Cj4gVGhhbmtzCj4gSGVpa28KPgo+Cj4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
