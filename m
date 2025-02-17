Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C788C021A9
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Feb 2025 21:07:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oyTjjSdhBx0AlRactbxNeWWI85K3/kJf5S6T60KzhQg=; b=UfQ2gTmNCPLX3+
	cUgxXreY7p6UWhDJ4E7PMwmRcB0DqmVykx6RvOkyNeqxfurvTS44W2RZcChQDFE8xOAxPvJStH0Pu
	7NPDcZ25OqIZHBwIIvNAPnHQV9pSntFc0eYfEFXYS8IQYlqw/hPoqsHqmkjb+/IrFFLQkTdLW5EO7
	CF4csQJw45FgB6x6wOWdpe9wE1Z6PVEGD3WoLFndp84kIGnZ90WU/aW3bETGOEnHu+HfQ8HRUIGdG
	BXpzYikvGJ5Ty5R+OL33FJFHMcaLimNDuXuvVaipLbZZz7DdXMs59yB78ii6+difrhFUIedmD5qWx
	2h7yip9rFTsBgaOLTrFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tk8Ko-00000005ynI-31Gj;
	Mon, 17 Feb 2025 21:07:22 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tk8JK-00000005ycq-2NRM;
	Mon, 17 Feb 2025 21:05:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1739826348;
	bh=xkZ5C4RRw8ad7q0dz3o/qbGl9MzaFXUgGSXYjVbtOWA=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=aW7ol2iPEM7YU4BSPBprp8cFl+Z+UAF9wru33YLobNMb8LuCedfbT7PMVqEmzXoyU
	 Eclj16zUhqKuxwm3uLMCCys4gwKc/0i2pW+c4P90BPtmO+xoTL5XEvIge3ao9kQiNS
	 MgBIMevZaTq1raoHsKuPfBCfwlfg2xoCH1FgnLV+aUcggUynldsC7Eyqz5Yi3aUCxa
	 lo1Ofo/arQLiv05QrnCkiOuosBnspOrefc/NRapd23xkwCy6nhRsc+Qejg9NMBAcI+
	 neyhVGRHgcCMr/bd6B3C5xPxLUcRpA3Sw6TV+EBS6iiEz/6WYUkXc9vO09t5SvcRlT
	 2S0h2HA3zVlyQ==
Received: from [IPv6:2606:6d00:11:e976::5ac] (unknown [IPv6:2606:6d00:11:e976::5ac])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 85CC517E0391;
	Mon, 17 Feb 2025 22:05:47 +0100 (CET)
Message-ID: <83e0afab381fe2580e4c75fccc62cb7bcb546369.camel@collabora.com>
Subject: Re: [PATCH] media: verisilicon: Fix AV1 decoder clock frequency
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, Philipp Zabel	
 <p.zabel@pengutronix.de>, Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko
 Stuebner <heiko@sntech.de>, Hans Verkuil <hverkuil@xs4all.nl>
Cc: stable@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, kernel@collabora.com
Date: Mon, 17 Feb 2025 16:05:45 -0500
In-Reply-To: <20250217-b4-hantro-av1-clock-rate-v1-1-65b91132c551@collabora.com>
References: <20250217-b4-hantro-av1-clock-rate-v1-1-65b91132c551@collabora.com>
Organization: Collabora Canada
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_130550_758597_0D9C1F5F 
X-CRM114-Status: GOOD (  22.99  )
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

SGksCgpJJ20gc29ycnkgZm9yIHRoaXMgYmFkIHNlbmQsIHBsZWFzZSBkaXNtaXNzLgoKTGUgbHVu
ZGkgMTcgZsOpdnJpZXIgMjAyNSDDoCAxNjowMCAtMDUwMCwgTmljb2xhcyBEdWZyZXNuZSBhIMOp
Y3JpdMKgOgo+IFRoZSBkZXNpcmVkIGNsb2NrIGZyZXF1ZW5jeSB3YXMgY29ycmVjdGx5IHNldCB0
byA0MDBNSHogaW4gdGhlIGRldmljZSB0cmVlCj4gYnV0IHdhcyBsb3dlcmVkIGJ5IHRoZSBkcml2
ZXIgdG8gMzAwTUh6IGJyZWFraW5nIDRLIDYwSHogY29udGVudCBwbGF5YmFjay4KPiBGaXggdGhl
IGlzc3VlIGJ5IHJlbW92aW5nIHRoZSBkcml2ZXIgY2FsbCB0byBjbGtfc2V0X3JhdGUoKSwgd2hp
Y2ggcmVkdWNlCj4gdGhlIGFtb3VudCBvZiBib2FyZCBzcGVjaWZpYyBjb2RlLgo+IAo+IEZpeGVz
OiAwMDNhZmRhOTdjNjUgKCJtZWRpYTogdmVyaXNpbGljb246IEVuYWJsZSBBVjEgZGVjb2RlciBv
biByazM1ODgiKQo+IFNpZ25lZC1vZmYtYnk6IE5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVm
cmVzbmVAY29sbGFib3JhLmNvbT4KPiAtLS0KPiBUaGlzIHBhdGNoIGZpeGVzIHVzZXIgcmVwb3J0
IG9mIEFWMSA0SzYwIGRlY29kZXIgbm90IGJlaW5nIGZhc3QgZW5vdWdoCj4gb24gUkszNTg4IGJh
c2VkIFNvQy4gVGhpcyBpcyBhIGJyZWFrIGZyb20gSGFudHJvIG9yaWdpbmFsIGF1dGhvcnMKPiBo
YWJiaXQgb2YgY29kaW5nIHRoZSBmcmVxdWVuY2llcyBpbiB0aGUgZHJpdmVyIGluc3RlYWQgb2Yg
c3BlY2lmeWluZyB0aGlzCj4gZnJlcXVlbmN5IGluIHRoZSBkZXZpY2UgdHJlZS4gVGhlIG90aGVy
IGNhbGxzIHRvIGNsa19zZXRfcmF0ZSgpIGFyZSBsZWZ0Cj4gc2luY2UgdGhpcyB3b3VsZCByZXF1
aXJlIG1vZGlmeWluZyBtYW55IGR0c2kgZmlsZXMsIHdoaWNoIHdvdWxkIHRoZW4gYmUKPiB1bnN1
aXRhYmxlIGZvciBiYWNrcG9ydC4KPiAtLS0KPiDCoGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVy
aXNpbGljb24vcm9ja2NoaXBfdnB1X2h3LmMgfCA1ICstLS0tCj4gwqAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKyksIDQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vcm9ja2NoaXBfdnB1X2h3LmMgYi9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3JvY2tjaGlwX3ZwdV9ody5jCj4gaW5kZXggOTY0MTIy
ZTdjMzU1OTM0Y2Q4MGViNDQyMjE5ZjZiYTUxYmJhOGI3MS4uOWQ4ZWFiMzM1NTZkNjI3MzNlYzdl
YzZiNWU2ODVjODZiYTcwODZlNCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3ZlcmlzaWxpY29uL3JvY2tjaGlwX3ZwdV9ody5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS92ZXJpc2lsaWNvbi9yb2NrY2hpcF92cHVfaHcuYwo+IEBAIC0xNyw3ICsxNyw2IEBACj4g
wqAKPiDCoCNkZWZpbmUgUkszMDY2X0FDTEtfTUFYX0ZSRVEgKDMwMCAqIDEwMDAgKiAxMDAwKQo+
IMKgI2RlZmluZSBSSzMyODhfQUNMS19NQVhfRlJFUSAoNDAwICogMTAwMCAqIDEwMDApCj4gLSNk
ZWZpbmUgUkszNTg4X0FDTEtfTUFYX0ZSRVEgKDMwMCAqIDEwMDAgKiAxMDAwKQo+IMKgCj4gwqAj
ZGVmaW5lIFJPQ0tDSElQX1ZQVTk4MV9NSU5fU0laRSA2NAo+IMKgCj4gQEAgLTQ0MCwxMCArNDM5
LDkgQEAgc3RhdGljIGludCByazMwNjZfdnB1X2h3X2luaXQoc3RydWN0IGhhbnRyb19kZXYgKnZw
dSkKPiDCoAlyZXR1cm4gMDsKPiDCoH0KPiDCoAo+ICsvKiBUT0RPIGp1c3QgcmVtb3ZlLCB0aGUg
Q0xLIGFyZSBkZWZpbmVkIGNvcnJlY3RseSBpbiB0aGUgRFRTICovCj4gwqBzdGF0aWMgaW50IHJr
MzU4OF92cHU5ODFfaHdfaW5pdChzdHJ1Y3QgaGFudHJvX2RldiAqdnB1KQoKT2J2aW91c2x5IHRo
YXQgZnVuY3Rpb24gaXMgbWVhbnQgdG8gY29tcGxldGVseSBnbyBhd2F5LCBnb3QgZGlzdHJhY3Rl
ZAphbmQgc2VudCB0aGUgb2xkIHZlcnNpb24uCgpOaWNvbGFzCgo+IMKgewo+IC0JLyogQnVtcCBB
Q0xLcyB0byBtYXguIHBvc3NpYmxlIGZyZXEuIHRvIGltcHJvdmUgcGVyZm9ybWFuY2UuICovCj4g
LQljbGtfc2V0X3JhdGUodnB1LT5jbG9ja3NbMF0uY2xrLCBSSzM1ODhfQUNMS19NQVhfRlJFUSk7
Cj4gwqAJcmV0dXJuIDA7Cj4gwqB9Cj4gwqAKPiBAQCAtODA3LDcgKzgwNSw2IEBAIGNvbnN0IHN0
cnVjdCBoYW50cm9fdmFyaWFudCByazM1ODhfdnB1OTgxX3ZhcmlhbnQgPSB7Cj4gwqAJLmNvZGVj
X29wcyA9IHJrMzU4OF92cHU5ODFfY29kZWNfb3BzLAo+IMKgCS5pcnFzID0gcmszNTg4X3ZwdTk4
MV9pcnFzLAo+IMKgCS5udW1faXJxcyA9IEFSUkFZX1NJWkUocmszNTg4X3ZwdTk4MV9pcnFzKSwK
PiAtCS5pbml0ID0gcmszNTg4X3ZwdTk4MV9od19pbml0LAo+IMKgCS5jbGtfbmFtZXMgPSByazM1
ODhfdnB1OTgxX3ZwdV9jbGtfbmFtZXMsCj4gwqAJLm51bV9jbG9ja3MgPSBBUlJBWV9TSVpFKHJr
MzU4OF92cHU5ODFfdnB1X2Nsa19uYW1lcykKPiDCoH07Cj4gCj4gLS0tCj4gYmFzZS1jb21taXQ6
IDIwMTRjOTVhZmVjZWUzZTc2Y2E0YTU2OTU2YTkzNmUyMzI4M2YwNWIKPiBjaGFuZ2UtaWQ6IDIw
MjUwMjE3LWI0LWhhbnRyby1hdjEtY2xvY2stcmF0ZS1lNTQ5N2YxNDk5ZGYKPiAKPiBCZXN0IHJl
Z2FyZHMsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
