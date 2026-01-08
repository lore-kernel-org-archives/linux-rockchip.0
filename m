Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A941D148A3
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Jan 2026 08:02:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Ptf7L0CnZt3xTO2Bc3vS5HVKGNmswj+mnMD3nWfN2Q=; b=cgqe1Q3z7MawP1
	5FBpnd4CNhQEphFotoQveuVzZ3N8BB99qRngj0Nh4HqUpaNVjQWuTN00rtGkJ9IFNMtrWbxp8JIA8
	reiDJZ3qqYXbs/F9mKm3t3mtSxVKlz7HA1SPhEf808JHVIvHTJ8aEFubL9mkLmX1ronWS4uzWdtNn
	T5yBn19a6WgVIz67uKj5BcNyKs9nYwfUYLutfM/pkvUaItSgTznrqRZCnC/gu2Qng0NwDhuW+qW49
	kAn2AGQvFql334KR5cvKTNYJmS7jyWFf3f0lqos+JMTJ+yqmeYKSCK4Rk8Vb14202mNxWd56jW0wn
	YHaLlZvjwhvr8buwOMLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdkyM-0000000GC4F-3TuP;
	Thu, 08 Jan 2026 08:02:22 +0000
Received: from bg1.exmail.qq.com ([114.132.79.153])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdkyI-0000000GBwS-0Yb9;
	Thu, 08 Jan 2026 08:02:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1767859313;
	bh=8sPvtV6R5fOot1emRO6hT0bqnJhowoQAnBmNF7+RVj0=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=vNMIOFkcOIGiTQbZfn9/XskYwltKjHkQHn15ZPykmee2zms9ZoxNsPlJ80mDOGfPK
	 v6X4fjFWDNidB7V06WNQuvYztgTs/Xkn00m+Lw236mU8r5PPE9DOytlIBWSuM1WKMI
	 k78p8FHNzsDSy/WfxiY4twrI4MEAxVL7AkYSIShY=
X-QQ-mid: zesmtpgz9t1767859306t749baf49
X-QQ-Originating-IP: WIhSujCjZ4exQ3XJHVOY0FYbufeEWfI1WXKa++9oDCY=
Received: from [172.16.12.51] ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 08 Jan 2026 16:01:44 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 15587685843860407837
EX-QQ-RecipientCnt: 23
Message-ID: <5FFFBA7FAF5745A7+e0381969-800a-4bf6-9aac-81cffa3469a1@airkyi.com>
Date: Thu, 8 Jan 2026 16:01:43 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add rk3576 evb2 board
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>,
 Alexey Charkov <alchark@gmail.com>, Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Quentin Schulz <quentin.schulz@cherry.de>,
 Kever Yang <kever.yang@rock-chips.com>, Jonas Karlman <jonas@kwiboo.se>,
 John Clark <inindev@gmail.com>, FUKAUMI Naoki <naoki@radxa.com>,
 Jimmy Hon <honyuenkwun@gmail.com>, Dragan Simic <dsimic@manjaro.org>,
 Michael Riesch <michael.riesch@collabora.com>,
 Peter Robinson <pbrobinson@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260107070322.323-1-kernel@airkyi.com>
 <20260107070322.323-3-kernel@airkyi.com>
 <b5a3470c-aa03-42d0-a575-b705f709f8e6@lunn.ch>
 <CABjd4YzsjZXe16XWgrHRG5shNA_DQJF45i1roahvfAfV4xdU0Q@mail.gmail.com>
 <a545fec0-cb30-489a-b5e6-4ee87dcab41c@rock-chips.com>
Content-Language: en-US
From: Chaoyi Chen <kernel@airkyi.com>
In-Reply-To: <a545fec0-cb30-489a-b5e6-4ee87dcab41c@rock-chips.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: MhC1rXRaWvfnq4Vu+ns3dE6XXbeAdQVBQ0d0eNnfzAi7v1fVk2swrB/h
	1rqyjZyWm7N+HVtn91hGaRttp5InlRRXm5O3rjgl/5m+kCzQe6o78Pevb7+7uepZQEtL0hX
	8j2CnYyqGSYdrhGlAUcm2okbNVPVKVYPZrkHTdvUN+OdB361X0UMB+irpzR77c4++tRNx19
	VG4/WRCxsE7WzrYYCVBIxJ7LeeG7tAbYnG96rQDLUZ7wJUzDk+xsC+31m/aCpSeBlzEaYm3
	4eHtzXbEvUauzzl5DQTksL34evxTr8I/0PwfsAhq7ISDzp6LVQxkmH37n9dh25g8hAV6toT
	XulTVFPT/tveCFyY0pMtkhwHs/a6pT+HDAquvvxOZHNnmxQO1HtG+0bXbr9qCLPZo6MzTym
	U3mHIH9NFTYkr2D0LMLN1qSBNKzpOoPDksjNcJl/dbx/fuAT9TFe3/iQIr9aXDIre84Gyw2
	gKFpD6AD3zHzItzsUKxjINkkvhRj4Q7qZdkz9IdzxhYetfYHDGyn2/LwS6k9z4M1CQVS+98
	Ln59orzbt6Hgu0E6gzT1O75SwFli1AmdOSO6hFG05ZfU9QUnPKSvEMlJikoSncAnDfBw54I
	oBAK3mn4+EQGqurkdFcoAbIYJjOwTea7Vhk/uNWOqjgHYyso1MjfNALoJhtgOQsE0vRKRy8
	zJDrFL8qXOMUC7lrk3WL1UIBnTL4RF5CKsCIL+du7/Xgla8k/mea/6L3jdgK1KSP+j6zABh
	jW8SC1RBJ918xjBcZjASLTFiN8PbJykv6+J7BtM/JfMhjdoBZU3p5C0WrXN7ElG5skrDxSg
	G5z/RhCY6mBQXAdsvW5YOYM1sVmBfxFcbK5/wgN8loYv4ZKuf2PT9p4SED0dzyORjkEe1Up
	tX0du1HR/hutsJs5wh4i6QJ8BvZtsE5Ukzo25zKFbvMz7bZs1t+iTys7kiAYN/uRDykjpm8
	lZ4GyNXyNQ/zOvHANiSTLvLQmnzvUBPQCfoOMvnFu1UEiDKoOQwT6FK+0wWuLrPwSUWzyvZ
	ppkJDEWYz9/p08OQq0yy9YHwxrulA/Kf31LgVPyl+B7AjSCOggw96I8PZhp7h+JRL55nI6M
	g==
X-QQ-XMRINFO: OD9hHCdaPRBwH5bRRRw8tsiH4UAatJqXfg==
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_000218_562799_B657D27E 
X-CRM114-Status: GOOD (  20.04  )
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

T24gMS84LzIwMjYgMzo0MiBQTSwgQ2hhb3lpIENoZW4gd3JvdGU6Cj4gSGVsbG8gQWxleGV5LCBB
bmRyZXcsCj4gCj4gT24gMS84LzIwMjYgMjo1MyBQTSwgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4+
IE9uIFdlZCwgSmFuIDcsIDIwMjYgYXQgMTA6MTjigK9QTSBBbmRyZXcgTHVubiA8YW5kcmV3QGx1
bm4uY2g+IHdyb3RlOgo+Pj4KPj4+PiArJmdtYWMwIHsKPj4+PiArICAgICBjbG9ja19pbl9vdXQg
PSAib3V0cHV0IjsKPj4+PiArICAgICBwaHktbW9kZSA9ICJyZ21paS1yeGlkIjsKPj4+Cj4+PiBy
Z21paS1yeGlkIGlzIG9kZC4gRG9lcyB0aGUgUENCIHJlYWxseSBoYXZlIGFuIGV4dHJhIGxvbmcg
VFggY2xvY2sKPj4+IGxpbmUsIGJ1dCBhIHNob3J0IFJYIGNsb2NrIGxpbmU/Cj4+Pgo+Pj4gVHJ5
IGNoYW5naW5nIHRoaXMgdG8gcmdtaWktaWQsIGFuZCBkcm9wIHRoZSB0eF9kZWxheSBwcm9wZXJ0
eS4KPj4KPj4gQWN0dWFsbHkgaXQgd291bGQgYmUgZ3JlYXQgaWYgUm9ja2NoaXAgY291bGQgY2xh
cmlmeSB0aGUgZGVsYXkKPj4gZHVyYXRpb24gaW50cm9kdWNlZCBieSBhIHNpbmdsZSBkZWxheSBl
bGVtZW50IGluIEdNQUMtSU9NVVggZGVsYXkKPj4gbGluZXMsIHdoaWNoIGFyZSBjb250cm9sbGVk
IGluIHRoZSBHTUFDIGRyaXZlciBieSB0aGUge3R4LHJ4fV9kZWxheQo+PiBwcm9wZXJ0aWVzLiBN
YXliZSB3ZSBjb3VsZCB0aGVuIHN3aXRjaCB0byB1c2luZwo+PiB7dHgscnh9X2ludGVybmFsX2Rl
bGF5X3BzIGZvciBmaW5lLXR1bmluZyB0aGUgZGVsYXlzIG9uIHRoZSBHTUFDIHNpZGUKPj4gYXMg
ZW52aXNhZ2VkIGluIERUIGJpbmRpbmdzIFsxXSwgYW5kIHVzZSBwaHktbW9kZSA9ICJyZ21paS1p
ZCIKPj4gdGhyb3VnaG91dC4gQ2hhb3lpLCBhbnkgY2hhbmNlIHlvdSBjb3VsZCBhc2sgYXJvdW5k
IGluIHlvdXIgaGFyZHdhcmUKPj4gdGVhbT8KPj4KPj4gQ3VycmVudGx5IHRob3VnaCByZW1vdmlu
ZyB0aGUgZGVsYXlzIGF0IEdNQUMgc2lkZSBhbHRvZ2V0aGVyIGNhdXNlcwo+PiB1bnN0YWJsZSBs
aW5rIG9wZXJhdGlvbiAtIHNlZSBbMl0gZm9yIGV4YW1wbGUuCj4+Cj4+IFsxXSBodHRwczovL2dp
dGh1Yi5jb20vdG9ydmFsZHMvbGludXgvYmxvYi9tYXN0ZXIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL25ldC9ldGhlcm5ldC1jb250cm9sbGVyLnlhbWwjTDM0Mi1MMzQ3Cj4+IFsy
XSBodHRwczovL2dpdGxhYi5jb2xsYWJvcmEuY29tL2hhcmR3YXJlLWVuYWJsZW1lbnQvcm9ja2No
aXAtMzU4OC9saW51eC8tL2NvbW1pdC8zNzJmM2U5YWU2MmNjNjJjZGYyNTQzMzkxZWE1N2JlNmJi
NTQ4YTBjCj4gCj4gU29ycnksIHRoaXMgcHJvYmxlbSBoYXMgYmVlbiBkaXNjdXNzZWQgbWFueSB0
aW1lcyBiZWZvcmUuIEl0J3MgYmVjYXVzZSAKPiB0aGUgZ21hYyBvbiB0aGUgUm9ja2NoaXAgcGxh
dGZvcm0gY3VycmVudGx5IHJlbGllcyBvbiBzZXR0aW5nIHRoZSAKPiBjb3JyZXNwb25kaW5nIGRl
bGF5IHZpYSBwaHktbW9kZSBbM10uCj4gCj4gWzNdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2Fs
bC9tcW95am43bW5xNnRtdDZuNm9ldjR3YTNoZXJqYXhsdXBtbDJmbWNhbXB3aWFqdmo0YUByNXpz
NGQzamRtNXAvCj4gCj4gVGhlIGRlbGF5IGludHJvZHVjZWQgYnkgdGhlIGRlbGF5IGxpbmUgaXMg
bm90IGFic29sdXRlLiBJbiByZWFsaXR5LAo+IGl0IGRlcGVuZHMgb24gZmFjdG9ycyBzdWNoIGFz
IHRoZSBjaGlwJ3MgZGVzaWduIGFuZCBwcm9jZXNzIHRlY2hub2xvZ3kuCj4gCj4gQW5kIGZvciBS
SzM1NzYsIHlvdSBjYW4gYXNzdW1lIHRoYXQ6Cj4gCQo+IAl0aW1lKG5zKSA9IDAuMDU3OSAqIGRl
bGF5X2xpbmVfY291bnQgKyAwLjEwNQo+IAo+IEZvciBleGFtcGxlLCB0eF9kZWxheSA9IDwweDIw
PiBtZWFuczoKPiAKPiAJdGltZSA9IDAuMDU3OSAqIDB4MjAgKyAwLjEwNSBucyA9IDEuOTU3OCBu
cwo+IAo+IEFuZCBJIGJlbGlldmUge3R4LHJ4fV9pbnRlcm5hbF9kZWxheV9wcyBpcyBpbmRlZWQg
YSBnb29kIGlkZWEuIAo+IEknbGwgdHJ5IHRvIGFkZCB0aGVtIGluIHYzLiBUaGFua3MuCj4KCkkn
dmUgYWxzbyBzZWUgc29tZSBkdCB0aGF0IHVzZSB7dHgscnh9X2ludGVybmFsX2RlbGF5X3BzIGlu
c2lkZSB0aGUgUEhZLAphbmQgY29tcGFyZWQgdG8gZG9pbmcgaXQgaW4gdGhlIE1BQywgd2hpY2gg
b25lIGlzIHRoZSBiZXR0ZXIgY2hvaWNlPwoKLS0gCkJlc3QsIApDaGFveWkKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
