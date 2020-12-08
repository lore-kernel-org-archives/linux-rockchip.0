Return-Path: <SRS0=uTbi=FM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C49B6C4361B
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Dec 2020 07:24:25 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4B86F23A6A
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Dec 2020 07:24:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4B86F23A6A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:Subject:To:From:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=JI1jpCE8uKpbFsT0lV7bYsMT7K4w0wMBF6+FTfveZeU=; b=QXJGH/qBFg0U4k9Qn0RVMeXra
	0vcD/xt1gklXmtBDkp15b19Bm4TKk6JMJCfs3E2lQ77YWyrCJoXhKpbWYnj/7fx2gkusFi85GwgZF
	T9V64Ni4iKPi9iK233b58QiPbjgIi9qUMFoHpbMMd8iblmxWvAPV2TrNNGxSdMpZZsz5BMUCZb0vc
	ZnUWebwmPWVGjOy1Tcm66GAxrtXHQ5KgqoyYi/k3dsK/Xhma4LitJG/Ie3PvKSke0nUXcZ2nOuvuB
	85fqeVcl0sV7m207GhnH1oJhp5Y3sj7eL2rfWKZEENn+klfDHrjINnYnmeGGvkqeCtRx6oEXT/8/v
	Fj55WB1xg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kmXMC-0006XA-8p; Tue, 08 Dec 2020 07:24:20 +0000
Received: from regular1.263xmail.com ([211.150.70.202])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kmXLz-0006Qw-UR; Tue, 08 Dec 2020 07:24:10 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id 7DBE8757;
 Tue,  8 Dec 2020 15:23:55 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from hp1216 (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P20464T140378982311680S1607412234718334_; 
 Tue, 08 Dec 2020 15:23:55 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <bf1563341e3518cf21c038c9a99d4d63>
X-RL-SENDER: zyf@rock-chips.com
X-SENDER: zyf@rock-chips.com
X-LOGIN-NAME: zyf@rock-chips.com
X-FST-TO: jbx6244@gmail.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Date: Tue, 8 Dec 2020 15:23:54 +0800
Organization: =?utf-8?B?55Ge6Iqv5b6u55S15a2Q?=
From: =?utf-8?B?6LW15Luq5bOw?= <yifeng.zhao@rock-chips.com>
To: "Johan Jonker" <jbx6244@gmail.com>, 
 "Miquel Raynal" <miquel.raynal@bootlin.com>, richard <richard@nod.at>, 
 vigneshr <vigneshr@ti.com>, robh+dt <robh+dt@kernel.org>
Subject: Re: Re: [PATCH v15 2/8] mtd: rawnand: rockchip: NFC drivers for
 RK3308, RK2928 and others
References: <20201130100031.22083-1-yifeng.zhao@rock-chips.com>, 
 <20201130100031.22083-3-yifeng.zhao@rock-chips.com>, 
 <0abf1dbd-13bb-cd92-907c-849f05ea887c@gmail.com>, 
 <259fe1ce-6bcb-3a26-493d-87bbd2eaff5e@gmail.com>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.18.111[cn]
Mime-Version: 1.0
Message-ID: <2020120815225461228793@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201208_022408_276901_15B6C818 
X-CRM114-Status: GOOD (  11.68  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree <devicetree@vger.kernel.org>,
 =?utf-8?B?SGVpa29TdMO8Ym5lcg==?= <heiko@sntech.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSm9oYW4sCgpZZXMsIEkgd2lsbCBwb3N0IE5GQyBjb2RlIHRvIFVib29077yMYnV0IGl0IG1h
eSB0YWtlIGEgd2hpbGUgdG8gbW9kaWZ5IHRoZSBjb2RlIGZvciBVYm9vdC4KCi0tLS0tLS0tLS0t
LS0tCnlpZmVuZwo+SGkgWWlmZW5nLAo+Cj5NZWFud2hpbGUsIGNvdWxkIHlvdSBwb3N0IGEgUkZD
IHZlcnNpb24gZm9yIFVib290IGJhc2VkIG9uIHRoaXMgdmVyc2lvbgo+cGx1cyBjb21tZW50cywg
c28gcGVvcGxlIGNhbiB0ZXN0IHRoZSB3aG9sZSBwcm9jZXNzIGZyb20gcHJvZ3JhbW1pbmcsCj5i
b290aW5nIGFuZCBrZXJuZWw/Cj4KPk9uIDExLzMwLzIwIDE6NDkgUE0sIEpvaGFuIEpvbmtlciB3
cm90ZToKPj4gSGksCj4+Cj4+IExvb2tzIGdvb2QgdG8gbWUuCj4+IERvIHRoZSBtYWludGFpbmVy
cyBvciBzb21lb25lIGVsc2UgaGF2ZSBhbnkgbWFqb3IgaXNzdWVzPwo+PiBDb3VsZCBNaXF1ZWwg
aW5kaWNhdGUgaWYgYSB2ZXJzaW9uIDE2IG11c3QgYmUgc2VuZCBmb3IgdGhhdCAncmV0Jwo+PiB2
YXJpYWJsZSBhbG9uZSBvciBpcyBpdCBPSyBub3c/Cj4+Cj4+Cj4+IE9uIDExLzMwLzIwIDExOjAw
IEFNLCBZaWZlbmcgWmhhbyB3cm90ZToKPj4+IFRoaXMgZHJpdmVyIHN1cHBvcnRzIFJvY2tjaGlw
IE5GQyAoTkFORCBGbGFzaCBDb250cm9sbGVyKSBmb3VuZCBvbiBSSzMzMDgsCj4+PiBSSzI5Mjgs
IFJLUFgzMCwgUlYxMTA4IGFuZCBvdGhlciBTT0NzLiBUaGUgZHJpdmVyIGhhcyBiZWVuIHRlc3Rl
ZCB1c2luZwo+Pj4gOC1iaXQgTkFORCBpbnRlcmZhY2Ugb24gdGhlIEFSTSBiYXNlZCBSSzMzMDgg
cGxhdGZvcm0uCj4KPlsuLl0KPgo+Pj4gKy8qKgo+Pj4gKyAqIHN0cnVjdCBya19lY2NfY250X3N0
YXR1czogcmVwcmVzZW50IGEgZWNjIHN0YXR1cyBkYXRhLgo+Cj5yZXByZXNlbnQgdGhlIEVDQyBz
dGF0dXMgZGF0YS4KPgo+Pj4gKyAqIEBlcnJfZmxhZ19iaXQ6IGVycm9yIGZsYWcgYml0IGluZGV4
IGF0IHJlZ2lzdGVyLgo+Pj4gKyAqIEBsb3c6IEVDQyBjb3VudCBsb3cgYml0IGluZGV4IGF0IHJl
Z2lzdGVyLgo+Pj4gKyAqIEBsb3dfbWFzazogbWFzayBiaXQuCj4+PiArICogQGxvd19ibjogRUND
IGNvdW50IGxvdyBiaXQgbnVtYmVyLgo+Pj4gKyAqIEBoaWdoOiBFQ0MgY291bnQgaGlnaCBiaXQg
aW5kZXggYXQgcmVnaXN0ZXIuCj4+PiArICogQGhpZ2hfbWFzazogbWFzayBiaXQKPj4+ICsgKi8K
Pgo+Cj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
