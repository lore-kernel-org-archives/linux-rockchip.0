Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA007C3ABC9
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 May 2025 20:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E9H8vEkpIcub+wfzcJ34k6aEKeTJaIJrtE72wzOYdMA=; b=iQbVXG9XBcGEkj
	jnADVBQc+4CZlg+YEzTpp7dLmvZHwKlXofkBA7XjKixbQ5K8og6nxLZl6Ye0T057K059EkljpbOOH
	rgiK0e0GNHmfjqYjNWs7mQfOkn/sowda+NjGvdMRXM2cCZd/cGmXsK3WiggnE/y8TsLraWyKjayDL
	3oXgtZiUxWfJ/0l9yW5IyiFtPn6URXGm1k0495GlyKqe+5DIehHwKvydje+mN90U1GoPyNX1CjfpH
	gld7FJ9IxzortQvYdLT/ATfT1L7ZoQ0//QtTa6TMnuMZK8yH44nq/BwO0yZrVScqWJ9rl7h/w8dVC
	rYc0IFgYm5KF8Hs30OaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uG1Nr-00000004XT9-2LBK;
	Fri, 16 May 2025 20:10:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uG1Np-00000004XSk-0Uj5
	for linux-rockchip@lists.infradead.org;
	Fri, 16 May 2025 20:10:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=4GWgmLyTl8Gk7HWPKH3auqn15uG60IPCLLC27zlld+U=; b=2uDmcFx2iH0atwEuyZslnoA/0e
	BBye0RDnqTqbtAf/uz2jOx/Sp3HaZw+uRLNPW0iyEdjqf5pxj1qDrr86wmaKkAFyePPnhwYeDjoOt
	J549FxwSNA8sb49hmXVkgFBiIwJwFiPozl4XJiJwW/Ys2beQgjsALDx5kB9v9er8o6Zk6hMcHGzN2
	jcBZ50uwE/375RfFcHFie5E/vOWoCsz1qTkacLLRB0JiAtkqxGKVMRdriEFQSdyu+Wg1RDmYhgyvK
	2Zq7dnAXP6iFICbdX2060oMBO2qXfRM2rrY2JsfGsDghYFZKQ3M+74/zlMQAEn1xJv/Edlob9B3NS
	ZkdUb5Ww==;
Received: from i53875a50.versanet.de ([83.135.90.80] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uG1Nc-0007aP-NQ; Fri, 16 May 2025 22:10:04 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Finley Xiao <finley.xiao@rock-chips.com>,
 kernel test robot <lkp@intel.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: oe-kbuild-all@lists.linux.dev, Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [linux-next:master 9473/11093]
 arch/arm64/boot/dts/rockchip/rk3562.dtsi:624.26-675.5: Warning
 (simple_bus_reg): /soc/pcie@ff500000: simple-bus unit address format error,
 expected "fe000000"
Date: Fri, 16 May 2025 22:10:03 +0200
Message-ID: <3983362.fW5hKsROvD@diego>
In-Reply-To: <202505150745.PQT9TLYX-lkp@intel.com>
References: <202505150745.PQT9TLYX-lkp@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250516_131017_180440_1E228B30 
X-CRM114-Status: GOOD (  13.11  )
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

QW0gRG9ubmVyc3RhZywgMTUuIE1haSAyMDI1LCAxNjowNDoyMCBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIGtlcm5lbCB0ZXN0IHJvYm90Ogo+IHRyZWU6ICAgaHR0cHM6Ly9n
aXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbmV4dC9saW51eC1uZXh0Lmdp
dCBtYXN0ZXIKPiBoZWFkOiAgIGJkZDYwOTY1NmZmNTU3M2RiOWJhMWQyNjQ5NmE1MjhiZGQyOTdj
ZjIKPiBjb21taXQ6IGNlYjZlZjFlYTkwMDI2NjlhZmMwZTFlZjI1OGU1MzBkM2MwNWQ5MWEgWzk0
NzMvMTEwOTNdIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgUkszNTYyIGV2YjIgZGV2aWNldHJl
ZQo+IGNvbmZpZzogYXJtNjQtcmFuZGNvbmZpZy0yMDUyLTIwMjUwNTEzIChodHRwczovL2Rvd25s
b2FkLjAxLm9yZy8wZGF5LWNpL2FyY2hpdmUvMjAyNTA1MTUvMjAyNTA1MTUwNzQ1LlBRVDlUTFlY
LWxrcEBpbnRlbC5jb20vY29uZmlnKQo+IGNvbXBpbGVyOiBjbGFuZyB2ZXJzaW9uIDIxLjAuMGdp
dCAoaHR0cHM6Ly9naXRodWIuY29tL2xsdm0vbGx2bS1wcm9qZWN0IGY4MTlmNDYyODRmMmE3OTc5
MDAzOGUxZjY2NDkxNzI3ODk3MzRhZTgpCj4gZHRzY2hlbWEgdmVyc2lvbjogMjAyNS4zLmRldjI3
K2czMjc0OWIzCj4gcmVwcm9kdWNlICh0aGlzIGlzIGEgVz0xIGJ1aWxkKTogKGh0dHBzOi8vZG93
bmxvYWQuMDEub3JnLzBkYXktY2kvYXJjaGl2ZS8yMDI1MDUxNS8yMDI1MDUxNTA3NDUuUFFUOVRM
WVgtbGtwQGludGVsLmNvbS9yZXByb2R1Y2UpCj4gCj4gSWYgeW91IGZpeCB0aGUgaXNzdWUgaW4g
YSBzZXBhcmF0ZSBwYXRjaC9jb21taXQgKGkuZS4gbm90IGp1c3QgYSBuZXcgdmVyc2lvbiBvZgo+
IHRoZSBzYW1lIHBhdGNoL2NvbW1pdCksIGtpbmRseSBhZGQgZm9sbG93aW5nIHRhZ3MKPiB8IFJl
cG9ydGVkLWJ5OiBrZXJuZWwgdGVzdCByb2JvdCA8bGtwQGludGVsLmNvbT4KPiB8IENsb3Nlczog
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvb2Uta2J1aWxkLWFsbC8yMDI1MDUxNTA3NDUuUFFUOVRM
WVgtbGtwQGludGVsLmNvbS8KPiAKPiBkdGNoZWNrIHdhcm5pbmdzOiAobmV3IG9uZXMgcHJlZml4
ZWQgYnkgPj4pCj4gPj4gYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjIuZHRzaTo2
MjQuMjYtNjc1LjU6IFdhcm5pbmcgKHNpbXBsZV9idXNfcmVnKTogL3NvYy9wY2llQGZmNTAwMDAw
OiBzaW1wbGUtYnVzIHVuaXQgYWRkcmVzcyBmb3JtYXQgZXJyb3IsIGV4cGVjdGVkICJmZTAwMDAw
MCIKPiA+PiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Mi5kdHNpOjExMTUuMjAt
MTE4MS41OiBXYXJuaW5nIChzaW1wbGVfYnVzX3JlZyk6IC9zb2MvcGluY3RybDogbWlzc2luZyBv
ciBlbXB0eSByZWcvcmFuZ2VzIHByb3BlcnR5CgpobW0sIEkgZG9uJ3QgcmVhbGx5IHVuZGVyc3Rh
bmQgdGhpcyBlcnJvciBtZXNzYWdlLgoKRnJvbSBhIHByYWN0aWNhbCBwb2ludCwgdGhlIGR0c2No
ZW1hLXZlcnNpb24gSSBoYXZlIGluc3RhbGxlZCBpcwoyMDI1LjMuZGV2MjcrZzMyNzQ5YjMsIHdo
aWNoIGlzIHRoZSB0b3Btb3N0IGNvbW1pdCBmcm9tCm1heS0xM3RoLgoKUnVubmluZyB0aGUgZHRi
c2NoZWNrIG9uIHRoZSByazM1NjItZXZiLXYxMC5kdGIgb24gdGhlIGZ1bGwKbGludXgtbmV4dCBm
cm9tIHRvZGF5LCB5aWVsZHMgbm8gZXJyb3JzLgoKQ2hlY2tpbmcgb3V0IHRoZSBzcGVjaWZpYyBj
b21taXQgY2ViNmVmMWVhOTAwMjYgYnJpbmdzIHVwIHRoZQplcnJvcnMgZnJvbSBiZWxvdyBbMV0s
IGJlY2F1c2UgdGhleSBjb21lIGZyb20gZGlmZmVyZW50IHRyZWVzLgoKCkJ1dCBpbiBubyBjYXNl
cyBkb2VzIGR0YnNjaGVjayBjb21wbGFpbiBhYm91dCB0aGUgUENJIG1lbW9yeSByZWdpb25zLgoK
ClRoZSBQQ0llIGNvbnRyb2xsZXIgaW4gcXVlc3Rpb24gb2YgY291cnNlIGhhcyAzIG1lbW9yeSBy
ZWdpb25zCglyZWcgPSA8MHgwIDB4ZmUwMDAwMDAgMHgwIDB4NDAwMDAwPiwKCSAgICAgIDwweDAg
MHhmZjUwMDAwMCAweDAgMHgxMDAwMD4sCgkgICAgICA8MHgwIDB4ZmMwMDAwMDAgMHgwIDB4MTAw
MDAwPjsKCXJlZy1uYW1lcyA9ICJkYmkiLCAiYXBiIiwgImNvbmZpZyI7CgphbmQgY3VycmVudGx5
IHRoZSBub2RlLW5hbWUgbWltaWNzIHRoZSAiYXBiIiBtZW1vcnkgcmVnaW9uLgpTaG91bGQgaXQg
YWx3YXlzIHVzZSB0aGUgZmlyc3Qgb25lPwoKClsxXQo+ICAgIGFyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTYyLWV2YjItdjEwLmR0YjogL3NvYy9wb3dlci1tYW5hZ2VtZW50QGZmMjU4
MDAwL3Bvd2VyLWNvbnRyb2xsZXI6IGZhaWxlZCB0byBtYXRjaCBhbnkgc2NoZW1hIHdpdGggY29t
cGF0aWJsZTogWydyb2NrY2hpcCxyazM1NjItcG93ZXItY29udHJvbGxlciddCj4gICAgYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjItZXZiMi12MTAuZHRiOiBwY2llQGZmNTAwMDAw
IChyb2NrY2hpcCxyazM1NjItcGNpZSk6IGludGVycnVwdC1uYW1lczo1OiAnZG1hMCcgd2FzIGV4
cGVjdGVkCj4gICAgCWZyb20gc2NoZW1hICRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVt
YXMvcGNpL3JvY2tjaGlwLWR3LXBjaWUueWFtbCMKPiAgICBhcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU2Mi1ldmIyLXYxMC5kdGI6IHBjaWVAZmY1MDAwMDAgKHJvY2tjaGlwLHJrMzU2
Mi1wY2llKTogY29tcGF0aWJsZTogJ29uZU9mJyBjb25kaXRpb25hbCBmYWlsZWQsIG9uZSBtdXN0
IGJlIGZpeGVkOgo+ICAgIAlbJ3JvY2tjaGlwLHJrMzU2Mi1wY2llJywgJ3JvY2tjaGlwLHJrMzU2
OC1wY2llJ10gaXMgdG9vIGxvbmcKPiAgICAJJ3JvY2tjaGlwLHJrMzU2OC1wY2llJyB3YXMgZXhw
ZWN0ZWQKPiAKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
