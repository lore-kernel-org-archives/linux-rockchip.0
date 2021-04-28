Return-Path: <SRS0=Fx1p=JZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA730C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 03:52:34 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D672F61008
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 03:52:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D672F61008
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Cc:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=J7wyJPGn4WgqzXYGeu2jEfwWKXE1IdFdKZbd9ZDeR3M=; b=T7R0609OAKcZHGXTzNl3kKbDx
	kVgUsUwIdoRbyyrK25VSiJ3UobwLY/tYPYrynPQR7r1p3b6R5NwwmUq1+OVHEdTSTvMXPAKhO1QKm
	XJcq2vAokPK+JdhaVqPIPHpvJODJxsLBwl/nl8U2UHLI8lNcAOHqdUxzGGAWlaqnaYI0L+lx4cZP7
	dC58EaQr9YGXNLvlA/2wL8MZ8OKxU+pdBJPsKWuhKIV2Swuz2RaReIN1oDxI3KRcXkB/JOY9SVGEE
	Xer82MUrRJNG1p+w6sr3Lh6SmYH2RMMCCJxWvLwJ477mVa8W7ugyUmDnzMI42wfWOayKdQ7CeL+s3
	wp0J7kj2w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbbFS-002hnj-75; Wed, 28 Apr 2021 03:52:26 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbbFD-002hml-Le; Wed, 28 Apr 2021 03:52:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Cc:Sender:Reply-To:Content-ID:Content-Description;
 bh=JBSc6SHwubjjhpRBEIIHDeCbTNJP1jDNCvlMFuQzGbA=; b=BNIP0KfsOeVJ/qTuTxzbu4bj6v
 QcJy7iW3fBcS4N2g+QEt8GgrsGnGGJ6Go/p6gr2AX8RSEINqUuW1UPuRVyByQyTQXuClB/tA2ZY59
 LT09D4GuSPZC8Q9amDssYJ3ZYtD71EDadK776V3b+4Xw9uO3uC3ybjRh0m0kquA9YmM/moTnk0EYx
 VuECszhvDQ4zqBv+Me6KyHT/imX+Q6p0c9nmOg1rqy1tdzX9nn6vJAYmRIWvtOp34h/H4sp6+Yb/P
 6nv/Hne6m6i5jj4K4hGWwdcEKW97kfqiHVmQzd50dx//49SI382vY4+xrp8D3AOyuzfJ/tFQ9vTe8
 /C9on/Sg==;
Received: from regular1.263xmail.com ([211.150.70.195])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbbF8-00HAIP-M0; Wed, 28 Apr 2021 03:52:09 +0000
Received: from localhost (unknown [192.168.167.16])
 by regular1.263xmail.com (Postfix) with ESMTP id BBCA01D0D;
 Wed, 28 Apr 2021 11:51:57 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.151] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P31921T139684281841408S1619581915530662_; 
 Wed, 28 Apr 2021 11:51:57 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <688f917f3d5249d5a3fcc18c8a4f120d>
X-RL-SENDER: cl@rock-chips.com
X-SENDER: cl@rock-chips.com
X-LOGIN-NAME: cl@rock-chips.com
X-FST-TO: linux-watchdog@vger.kernel.org
X-RCPT-COUNT: 29
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Cc: cl@rock-chips.com, robh+dt@kernel.org, jagan@amarulasolutions.com,
 wens@csie.org, uwe@kleine-koenig.org, mail@david-bauer.net,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, jensenhuang@friendlyarm.com,
 michael@amarulasolutions.com, cnsztl@gmail.com, devicetree@vger.kernel.org,
 ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-serial@vger.kernel.org,
 linux-i2c@vger.kernel.org, jay.xu@rock-chips.com, shawn.lin@rock-chips.com,
 david.wu@rock-chips.com, zhangqing@rock-chips.com, huangtao@rock-chips.com,
 wim@linux-watchdog.org, linux@roeck-us.net, jamie@jamieiles.com,
 linux-watchdog@vger.kernel.org
Subject: Re: [PATCH v2 6/7] arm64: dts: rockchip: add core dtsi for RK3568 SoC
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>
References: <20210425094216.25724-1-cl@rock-chips.com>
 <20210425094439.25895-1-cl@rock-chips.com>
 <16908f63-4e20-ba1b-3b5c-39b4c4db242b@gmail.com> <6618564.gtipl9YmvM@diego>
From: =?UTF-8?B?6ZmI5Lqu?= <cl@rock-chips.com>
Message-ID: <12c486c7-f9ce-5ddc-c5db-97e4855f38d6@rock-chips.com>
Date: Wed, 28 Apr 2021 11:51:55 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <6618564.gtipl9YmvM@diego>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210427_205207_114397_C67554E1 
X-CRM114-Status: GOOD (  25.05  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGkgaGVpa28sCgogwqDCoMKgIMKgwqDCoCBJIHBsYW4gdG8gZHJvcCBncmYgc3R1ZmYgaW4gbmV4
dCB2ZXJzaW9uLCBhbmQgbWFrZSBhIG5ldyBzdWJtaXQgCmZvciBncmYgYW5kIGRvY3VtZW50IGxh
dGVyLCB0aGFua3MuCgrlnKggMjAyMS80LzI3IOS4i+WNiDQ6MDcsIEhlaWtvIFN0w7xibmVyIOWG
memBkzoKPiBBbSBEaWVuc3RhZywgMjcuIEFwcmlsIDIwMjEsIDA5OjQxOjQwIENFU1Qgc2Nocmll
YiBKb2hhbiBKb25rZXI6Cj4+IE9uIDQvMjUvMjEgMTE6NDQgQU0sIGNsQHJvY2stY2hpcHMuY29t
IHdyb3RlOgo+Pj4gRnJvbTogTGlhbmcgQ2hlbiA8Y2xAcm9jay1jaGlwcy5jb20+Cj4+Pgo+Pj4g
UkszNTY4IGlzIGEgaGlnaC1wZXJmb3JtYW5jZSBhbmQgbG93IHBvd2VyIHF1YWQtY29yZSBhcHBs
aWNhdGlvbiBwcm9jZXNzb3IKPj4+IGRlc2lnbmVkIGZvciBwZXJzb25hbCBtb2JpbGUgaW50ZXJu
ZXQgZGV2aWNlIGFuZCBBSW9UIGVxdWlwbWVudHMuIFRoaXMgcGF0Y2gKPj4+IGFkZCBiYXNpYyBj
b3JlIGR0c2kgZmlsZSBmb3IgaXQuCj4+Pgo+Pj4gV2UgdXNlIHNjbWlfY2xrIGZvciBjb3J0ZXgt
YTU1IGluc3RlYWQgb2Ygc3RhbmRhcmQgQVJNQ0xLLCBzbyB0aGF0Cj4+PiBrZXJuZWwvdWJvb3Qv
cnRvcyBjYW4gY2hhbmdlIGNwdSBjbGsgd2l0aCB0aGUgc2FtZSBjb2RlIGluIEFURiwgYW5kIHdl
IHdpbGwKPj4+IGVuYWxiZSBhIHNwZWNpYWwgaGlnaC1wZXJmb3JtYWNuZSBQTEwgd2hlbiBoaWdo
IGZyZXF1ZW5jeSBpcyByZXF1aXJlZC4gVGhlCj4+PiBzbWNpX2NsayBjb2RlIGlzIGluIEFURiwg
YW5kIGNsa2lkIGZvciBjcHUgaXMgMCwgYXMgYmVsb3c6Cj4+Pgo+Pj4gICAgICBjcHUwOiBjcHVA
MCB7Cj4+PiAgICAgICAgICBkZXZpY2VfdHlwZSA9ICJjcHUiOwo+Pj4gICAgICAgICAgY29tcGF0
aWJsZSA9ICJhcm0sY29ydGV4LWE1NSI7Cj4+PiAgICAgICAgICByZWcgPSA8MHgwIDB4MD47Cj4+
PiAgICAgICAgICBjbG9ja3MgPSA8JnNjbWlfY2xrIDA+Owo+Pj4gICAgICB9Owo+Pj4KPj4+IFNp
Z25lZC1vZmYtYnk6IExpYW5nIENoZW4gPGNsQHJvY2stY2hpcHMuY29tPgo+Pj4gLS0tCj4+PiAg
IC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtcGluY3RybC5kdHNpICAgICB8IDMxMTkgKysr
KysrKysrKysrKysrKysKPj4+ICAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgu
ZHRzaSAgICAgIHwgIDgxMiArKysrKwo+Pj4gICAyIGZpbGVzIGNoYW5nZWQsIDM5MzEgaW5zZXJ0
aW9ucygrKQo+Pj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1NjgtcGluY3RybC5kdHNpCj4+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC5kdHNpCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXBpbmN0cmwuZHRzaSBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXBpbmN0cmwuZHRzaQo+Pj4gbmV3IGZpbGUgbW9k
ZSAxMDA2NDQKPj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uOTRlZTNjMmMzOGFmCj4+PiAtLS0gL2Rl
di9udWxsCj4+IFsuLl0KPj4KPj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU2OC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgu
ZHRzaQo+Pj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uNjZj
YjUwMjE4Y2ExCj4+PiAtLS0gL2Rldi9udWxsCj4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU2OC5kdHNpCj4+PiBAQCAtMCwwICsxLDgxMiBAQAo+PiBbLi5dCj4+Cj4+
PiArCj4+PiArCXBtdWdyZjogc3lzY29uQGZkYzIwMDAwIHsKPj4+ICsJCWNvbXBhdGlibGUgPSAi
cm9ja2NoaXAscmszNTY4LXBtdWdyZiIsICJzeXNjb24iLCAic2ltcGxlLW1mZCI7Cj4+IFRPRE86
Cj4+Cj4+PiArCQlyZWcgPSA8MHgwIDB4ZmRjMjAwMDAgMHgwIDB4MTAwMDA+Owo+Pj4gKwo+Pj4g
KwkJcmVib290X21vZGU6IHJlYm9vdC1tb2RlIHsKPj4+ICsJCQljb21wYXRpYmxlID0gInN5c2Nv
bi1yZWJvb3QtbW9kZSI7Cj4+PiArCQkJbW9kZS1ib290bG9hZGVyID0gPEJPT1RfQkxfRE9XTkxP
QUQ+Owo+Pj4gKwkJCW1vZGUtZmFzdGJvb3QgPSA8Qk9PVF9GQVNUQk9PVD47Cj4+PiArCQkJbW9k
ZS1sb2FkZXIgPSA8Qk9PVF9CTF9ET1dOTE9BRD47Cj4+PiArCQkJbW9kZS1ub3JtYWwgPSA8Qk9P
VF9OT1JNQUw+Owo+Pj4gKwkJCW1vZGUtcmVjb3ZlcnkgPSA8Qk9PVF9SRUNPVkVSWT47Cj4+PiAr
CQkJb2Zmc2V0ID0gPDB4MjAwPjsKPj4+ICsJCX07Cj4+PiArCX07Cj4+PiArCj4+PiArCWdyZjog
c3lzY29uQGZkYzYwMDAwIHsKPj4+ICsJCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTY4LWdy
ZiIsICJzeXNjb24iLCAic2ltcGxlLW1mZCI7Cj4+IFRPRE86Cj4+Cj4+PiArCQlyZWcgPSA8MHgw
IDB4ZmRjNjAwMDAgMHgwIDB4MTAwMDA+Owo+Pj4gKwl9Owo+Pj4gKwo+Pj4gKwlwbXVjcnU6IGNs
b2NrLWNvbnRyb2xsZXJAZmRkMDAwMDAgewo+Pj4gKwkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxy
azM1NjgtcG11Y3J1IjsKPj4+ICsJCXJlZyA9IDwweDAgMHhmZGQwMDAwMCAweDAgMHgxMDAwPjsK
Pj4+ICsJCXJvY2tjaGlwLGdyZiA9IDwmZ3JmPjsKPj4+ICsJCXJvY2tjaGlwLHBtdWdyZiA9IDwm
cG11Z3JmPjsKPj4gY2xvY2stY29udHJvbGxlckBmZGQwMDAwMDogJ3JvY2tjaGlwLGdyZicsICdy
b2NrY2hpcCxwbXVncmYnIGRvIG5vdAo+PiBtYXRjaCBhbnkgb2YgdGhlIHJlZ2V4ZXM6ICdwaW5j
dHJsLVswLTldKycKPj4KPj4gQ3VycmVudGx5IGNsay5jIGhhcyBvbmx5IHN1cHBvcnQgZm9yOgo+
Pgo+PiAJY3R4LT5ncmYgPSBzeXNjb25fcmVnbWFwX2xvb2t1cF9ieV9waGFuZGxlKGN0eC0+Y3J1
X25vZGUsCj4+IAkJCQkJCSAgICJyb2NrY2hpcCxncmYiKTsKPj4KPj4gTWFudWZhY3R1cmVyIHRy
ZWU6Cj4+Cj4+IAljdHgtPnBtdWdyZiA9IHN5c2Nvbl9yZWdtYXBfbG9va3VwX2J5X3BoYW5kbGUo
Y3R4LT5jcnVfbm9kZSwKPj4gCQkJCQkJICAgInJvY2tjaGlwLHBtdWdyZiIpOwo+PiAJCWNhc2Ug
YnJhbmNoX211eHBtdWdyZjoKPj4gCQkJY2xrID0gcm9ja2NoaXBfY2xrX3JlZ2lzdGVyX211eGdy
ZihsaXN0LT5uYW1lLAo+PiAJCQkJbGlzdC0+cGFyZW50X25hbWVzLCBsaXN0LT5udW1fcGFyZW50
cywKPj4gCQkJCWZsYWdzLCBjdHgtPnBtdWdyZiwgbGlzdC0+bXV4ZGl2X29mZnNldCwKPj4gCQkJ
CWxpc3QtPm11eF9zaGlmdCwgbGlzdC0+bXV4X3dpZHRoLAo+PiAJCQkJbGlzdC0+bXV4X2ZsYWdz
KTsKPj4gCQkJYnJlYWs7Cj4+Cj4+Cj4+IAlNVVhQTVVHUkYoU0NMS18zMktfSU9FLCAiY2xrXzMy
a19pb2UiLCBjbGtfMzJrX2lvZV9wLCAgMCwKPj4gCQkJUkszNTY4X1BNVV9HUkZfU09DX0NPTjAs
IDAsIDEsIE1GTEFHUykKPiAoMSkgZHJvcCB0aGUgcm9ja2NoaXAscG11Z3JmIHByb3BlcnR5IHBs
ZWFzZQo+ICgyKSBhcyBJIHNlZSBpdCwgd2Ugd2lsbCBvbmx5IG5lZWQgdGhlIHJvY2tjaGlwLGdy
ZiBwcm9wZXJ0eS4KPgo+IEZvciBtYWluIGNsb2NrIGNvbnRyb2xsZXIgZ3JmIHBvaW50cyB0byBt
YWluIGdyZgo+IEZvciBwbXUgY2xvY2sgY29udHJvbGxlciBncmYgcG9pbnRzIHRvIHBtdWdyZgo+
Cj4gRWFjaCBjbG9jayBjb250cm9sbGVyIGhhcyBpdHMgb3duIGFzc29jaWF0ZWQgZ3JmLgo+Cj4g
SSByZWFsbHkgc2VlIG5vIGNhc2Ugd2hlcmUgbWFpbi1jbGsgd291bGQgbmVlZCB0byBhY2Nlc3Mg
dGhlIHBtdWdyZgo+IHNhbWUgYXMgcG11LWNsayB3b3VsZCBzaG91bGQgbm90IG5lZWQgdG8gYWNj
ZXNzIHRoZSBtYWluIGdyZiwgYXMgdGhlCj4gc3BsaXQgaW50byBtYWluLXtjbGssZ3JmfSArIHBt
dS17Y2xrLGdyZn0gaXMgcHJvYmFibHkgYSBmb3IgcG93ZXItbWFuYWdlbWVudAo+IHJlYXNvbnMg
dG8gc2VwYXJhdGUgZGlmZmVyZW50IHBvd2VyLWFyZWFzLCB0aGUgZHJpdmVyIHNob3VsZCBhbHNv
IG5vdAo+IGNyb3NzIHRoaXMgYmFycmllciBhbnl3YXkgOy0pIC4KPgo+IFNhbWUgYXMsIGlmIGEg
Y2xrIHVzZXMgdGhlIHBtdWdyZiBpdCBpcyBhIHBtdS1iYXNlZCBjbG9jaywgaWYgaXQgdXNlcyB0
aGUKPiBtYWluIGdyZiwgaXQgc2hvdWxkIGxpdmUgaW4gdGhlIG1haW4gY2xvY2sgZHJpdmVyLgo+
Cj4gQW5kIGFzIGV4cGVjdGVkIHRoZSBjbGtfMzJrX2lvZSBpcyBhbHJlYWR5IGRlZmluZWQgaW4g
dGhlIHBtdWNsawo+IHBhcnQgb2YgdGhlIGRyaXZlciA7LSkKPgo+Cj4gSGVpa28KPgo+Cj4+PiAr
CQkjY2xvY2stY2VsbHMgPSA8MT47Cj4+PiArCQkjcmVzZXQtY2VsbHMgPSA8MT47Cj4+PiArCX07
Cj4+PiArCj4+PiArCWNydTogY2xvY2stY29udHJvbGxlckBmZGQyMDAwMCB7Cj4+PiArCQljb21w
YXRpYmxlID0gInJvY2tjaGlwLHJrMzU2OC1jcnUiOwo+Pj4gKwkJcmVnID0gPDB4MCAweGZkZDIw
MDAwIDB4MCAweDEwMDA+Owo+Pj4gKwkJcm9ja2NoaXAsZ3JmID0gPCZncmY+Owo+PiBjbG9jay1j
b250cm9sbGVyQGZkZDIwMDAwOiAnYXNzaWduZWQtY2xvY2stcGFyZW50cycsCj4+ICdhc3NpZ25l
ZC1jbG9jay1yYXRlcycsICdhc3NpZ25lZC1jbG9ja3MnLCAncm9ja2NoaXAsZ3JmJyBkbyBub3Qg
bWF0Y2gKPj4gYW55IG9mIHRoZSByZWdleGVzOgo+Pgo+PiBBZGQgbW9yZSBwcm9wZXJ0aWVzIHRv
IHJvY2tjaGlwLHJrMzU2OC1jcnUueWFtbAo+Pgo+Pj4gKwkJI2Nsb2NrLWNlbGxzID0gPDE+Owo+
Pj4gKwkJI3Jlc2V0LWNlbGxzID0gPDE+Owo+Pj4gKwo+Pj4gKwkJYXNzaWduZWQtY2xvY2tzID0K
Pj4+ICsJCQk8JnBtdWNydSBDTEtfUlRDXzMySz4sIDwmcG11Y3J1IFBMTF9QUExMPiwKPj4+ICsJ
CQk8JnBtdWNydSBQQ0xLX1BNVT4sIDwmY3J1IFBMTF9DUExMPiwKPj4+ICsJCQk8JmNydSBQTExf
R1BMTD4sIDwmY3J1IEFDTEtfQlVTPiwKPj4+ICsJCQk8JmNydSBQQ0xLX0JVUz4sIDwmY3J1IEFD
TEtfVE9QX0hJR0g+LAo+Pj4gKwkJCTwmY3J1IEFDTEtfVE9QX0xPVz4sIDwmY3J1IEhDTEtfVE9Q
PiwKPj4+ICsJCQk8JmNydSBQQ0xLX1RPUD4sIDwmY3J1IEFDTEtfUEVSSU1JRD4sCj4+PiArCQkJ
PCZjcnUgSENMS19QRVJJTUlEPiwgPCZjcnUgUExMX05QTEw+LAo+Pj4gKwkJCTwmY3J1IEFDTEtf
UElQRT4sIDwmY3J1IFBDTEtfUElQRT4sCj4+PiArCQkJPCZjcnUgQUNMS19WT1A+Owo+Pj4gKwkJ
YXNzaWduZWQtY2xvY2stcmF0ZXMgPQo+Pj4gKwkJCTwzMjc2OD4sIDwyMDAwMDAwMDA+LAo+Pj4g
KwkJCTwxMDAwMDAwMDA+LCA8MTAwMDAwMDAwMD4sCj4+PiArCQkJPDExODgwMDAwMDA+LCA8MTUw
MDAwMDAwPiwKPj4+ICsJCQk8MTAwMDAwMDAwPiwgPDUwMDAwMDAwMD4sCj4+PiArCQkJPDQwMDAw
MDAwMD4sIDwxNTAwMDAwMDA+LAo+Pj4gKwkJCTwxMDAwMDAwMDA+LCA8MzAwMDAwMDAwPiwKPj4+
ICsJCQk8MTUwMDAwMDAwPiwgPDEyMDAwMDAwMDA+LAo+Pj4gKwkJCTw0MDAwMDAwMDA+LCA8MTAw
MDAwMDAwPiwKPj4+ICsJCQk8NTAwMDAwMDAwPjsKPj4+ICsJCWFzc2lnbmVkLWNsb2NrLXBhcmVu
dHMgPQo+Pj4gKwkJCTwmcG11Y3J1IENMS19SVEMzMktfRlJBQz47Cj4+PiArCX07Cj4KPgo+Cj4K
Pgo+CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
