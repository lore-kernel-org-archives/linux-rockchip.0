Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B678C282D1
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 23:08:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=94xAbvJ+U16WYF3KXYqaGVy23Xjl+FXmlHFYUIEKzWE=; b=CRL1CqNx8bPIs3
	iCIHrL7Kfs1ljmVN45NLN0ogZpTLe4tt3ibMx+uR52gqtkLPzaWUShBB/Ilxd/MPaI0LSLxET1Nll
	70OlEQNXkzGvJLCfbXOZFlTG4u/G7cgvZy6rd2D1tJmKY4Ds3Kz8sVDmewC5gYOHbj7qvSGnz/MF1
	eVLj67v8J45pivml+T80rz2dgSpKTBJ+gka+uozgOOm0e0LC4HcdW41517Lf9tIrCJoY034/KiwaD
	/lc+/7Z5KwZCM9PQIR6ax1a7U85RCKB1tpSgnH3/BD0IRPxlmVqQElYK2YC3EB9VwnKBstyCKUWak
	sxKlZS/yKDupsTd1xANg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqKKZ-0000000CSCn-2jUx;
	Thu, 06 Mar 2025 23:08:43 +0000
Received: from smtp.forwardemail.net ([121.127.44.59])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqKJ9-0000000CRt9-2Fwx
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Mar 2025 23:07:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1741302434;
 bh=7Hz4rVSOPCLFTfl28e1lA4te8SstIFjzPVnzUbwvmJ4=;
 b=ne4RQggwaC5mwX1DBLO7G4paDJMdBSIJRmUVM0c+Z6DCoCVeXaWCy/IsyY2w590dvafMSH8Gp
 wbDBFeChJ6f3bgLDdhGZMgY9UsJt3+K6goLT7kAmh396wSmlLo8k0c7FxxwI9ImFNDvB644k6S8
 XQzmqFGc7nj079YlFh+bc/8L+aYeVVuQgTTSHdeCfibAVK1/fGzz6Mqi29kSM4358E9GPgI/DuO
 oFd0uZrEG06ZC12JAFdQjKuCEb7x1LPDHw9vx2GUsiKy7lwyyiEM6xFib0cnqSiQby2izQkwUmp
 XMHyo+zIxI6UPFBssTaBg2pkzegeFwIlBJ74CTiy7ezQ==
X-Forward-Email-ID: 67ca2a9ec1763851c065cdbc
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.59
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <7fa480bd-9bc5-4069-a623-afb140455192@kwiboo.se>
Date: Fri, 7 Mar 2025 00:07:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add rk3528 QoS register node
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Chukun Pan <amadeus@jmu.edu.cn>
Cc: Yao Zi <ziyao@disroot.org>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250306123809.273655-1-amadeus@jmu.edu.cn>
 <20250306123809.273655-3-amadeus@jmu.edu.cn>
 <cdbc1556-4662-4078-a4d6-33545e2e2491@kwiboo.se> <117081043.nniJfEyVGO@diego>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <117081043.nniJfEyVGO@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_150715_689475_4739139C 
X-CRM114-Status: GOOD (  13.32  )
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

T24gMjAyNS0wMy0wNiAxOTowOCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gRG9ubmVyc3Rh
ZywgNi4gTcOkcnogMjAyNSwgMTc6NTU6MTYgTUVaIHNjaHJpZWIgSm9uYXMgS2FybG1hbjoKPj4g
SGkgQ2h1a3VuLAo+Pgo+PiBPbiAyMDI1LTAzLTA2IDEzOjM4LCBDaHVrdW4gUGFuIHdyb3RlOgo+
Pj4gVGhlIFF1YWxpdHktb2YtU2VydmljZSAoUXNTKSBub2RlIHN0b3Jlcy9yZXN0b3JlcyBzcGVj
aWZpYwo+Pj4gcmVnaXN0ZXIgY29udGVudHMgd2hlbiB0aGUgcG93ZXIgZG9tYWlucyBpcyB0dXJu
ZWQgb2ZmL29uLgo+Pj4gQWRkIFFvUyBub2RlIHNvIHRoYXQgdGhleSBjYW4gY29ubmVjdCB0byB0
aGUgcG93ZXIgZG9tYWluLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IENodWt1biBQYW4gPGFtYWRl
dXNAam11LmVkdS5jbj4KPj4+IC0tLQo+Pj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTI4LmR0c2kgfCAxNjAgKysrKysrKysrKysrKysrKysrKysrKysKPj4+ICAxIGZpbGUgY2hh
bmdlZCwgMTYwIGluc2VydGlvbnMoKykKPj4+Cj4gCj4+Cj4+IFRoZXNlIFFvUyBub2RlIGFyZSB0
eXBpY2FsbHkgcmVmZXJlbmNlZCBmcm9tIHBvd2VyIGRvbWFpbnMgc28gdGhhdCB0aGUKPj4gUE1V
IGRyaXZlciBrbm93IHdoYXQgUW9TIHRvIHNhdmUvcmVzdG9yZSB3aGVuIGEgcG93ZXIgZG9tYWlu
IGlzIHBvd2VyCj4+IGN5Y2xlZC4KPj4KPj4gVmVuZG9yIGtlcm5lbCBvbmx5IHJlZmVyZW5jZSB0
aGUgdHdvIHFvc19ncHUgbm9kZXMgaW4gaXQncyBwb3dlciBkb21haW5zLAo+PiBkbyB5b3UgaGF2
ZSBhbnkgZG9jdW1lbnRhdGlvbiBvciBrbm93bGVkZ2UgYWJvdXQgd2hhdCBwb3dlciBkb21haW4g
dGhlCj4+IHJlbWFpbmluZyBRb1MgYXJlIHJlbGF0ZWQgdG8/Cj4gCj4gSSB0aGluayB0aGUgR1BV
IGFjdHVhbGx5IGlzIHRoZSBfb25seV8gZnVsbHkgc3dpdGNoYWJsZSBwb3dlci1kb21haW4gb24g
dGhlCj4gcmszNTI4LiBUaGUgb3RoZXIgcG93ZXJkb21haW5zIHNlZW0gdG8gYmUgYWx3YXlzIG9u
LCBidXQgY2FuIGRvIHRoaXMKPiBpZGxlLXJlcXVlc3QgdGhpbmcuCj4gCj4gQXQgbGVhc3QgdGhh
dCBpcyB3aGF0IEknbSByZWFkaW5nIGZyb20gdGhlIHBtLWRvbWFpbiBkZWZpbml0aW9ucyBpbiB0
aGUKPiB2ZW5kb3Ita2VybmVsLCBjb21iaW5lZCB3aXRoIGEgbG9vayBhdCB0aGUgcG11IHNlY3Rp
b24gb2YgdGhlIHJrMzUyOCBUUk0uCgpUaGFua3MgZm9yIHRoaXMgaW5mb3JtYXRpb24uCgpSZWdh
cmRzLApKb25hcwoKPiAKPiAKPiBIZWlrbwo+IAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
