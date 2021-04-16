Return-Path: <SRS0=xf8t=JN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0592EC43460
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 01:14:06 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4516B6109F
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 01:14:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4516B6109F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=swVvtHR8jjwCBn6uasPa4dX8KnA34ZhR8kChpH7GATo=; b=YpwXMHuUU2xinAAJKRJpJ53/+
	SiJr1rEaZmL3G3mylNQ1jKT1ZVG6FnQ8tkvAVzeYhMk4duiIgXux4weq2lkWJVFyNLpTznTfGbQgp
	yD/cjeoFgS0GAzrGqvgiZlJaxdmJR4itHMkJKMoXSA1k3ban87J1nwlKPv2ZLNDZuJdm22YK1Wvbe
	v4bJo4ehV1MClPyUkev1tW3MVRRZW4Wxg3njQ9zU1OxkoKaCilfxhhP6MNciDkjSq5Ft6wc0o7Fb4
	+XiSqr+wDEFlT8lG7CbwqpVapL0xIKMmYLjJhhnjQtXYDfYUui8dWdi6TajsxLezfKkwo+W7jt8QT
	HV7SYEwZg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXD3V-000Lbl-Ff; Fri, 16 Apr 2021 01:13:57 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXD3R-000Lav-3B
 for linux-rockchip@desiato.infradead.org; Fri, 16 Apr 2021 01:13:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=LH9w1lyeDc3qEQvpujhZu4uQ7f5NJ6v03mLBOzW4/3s=; b=BXuUuIiVWyif8CRrw9/uYgNDkD
 +W2m/EdIDINkHn0vdqs7WPC+PVj6jWCdcLB10Ydqfqf8tZ3mychBHwQkjfH4M1esaSiZwMh5wDH51
 wyClmW/LWHdlu2uIIZxsrirblzEL6B03MUWYccX+NAt1KKNFVZq27KTiZkiRI8aYmDuiT9DXh30+2
 F5RjffvqMaOtR+f1UV8fk/HGoES8s9m8hSS1LozxaNbwYzTJlhDoCH7it4y0czlM59+PksNV7zaln
 AcGNBv0cDWQHR3loLHVEQNraJezxjxli41Tgoe6LaFtU248D4KY3XB3KmrD7SRMeHmGHYR8i6VCAe
 7b0BxaLQ==;
Received: from regular1.263xmail.com ([211.150.70.195])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXD3L-00911p-EX
 for linux-rockchip@lists.infradead.org; Fri, 16 Apr 2021 01:13:49 +0000
Received: from localhost (unknown [192.168.167.172])
 by regular1.263xmail.com (Postfix) with ESMTP id AA5E61CB4;
 Fri, 16 Apr 2021 09:13:39 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.120] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P18449T140669553202944S1618535618574890_; 
 Fri, 16 Apr 2021 09:13:39 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <f8360a91e61024aadd0a1e46da1be00b>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: heiko@sntech.de
X-RCPT-COUNT: 6
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: Re: [RFC] ITS fails to allocate on rk3568/rk3566
To: Marc Zyngier <maz@kernel.org>
Cc: Peter Geis <pgwipeout@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
References: <CAMdYzYrQ5f-mv_VmTq_CRf9tR=j3mwRpKHNLmPFgCF9whsGFRw@mail.gmail.com>
 <871rbeo7wf.wl-maz@kernel.org>
 <CAMdYzYruPyiT89FrbJhuV=c36PyRwZ7sT45abnv8rTv85AKRow@mail.gmail.com>
 <87y2dmmggt.wl-maz@kernel.org>
 <CAMdYzYrNa_wJa9mvBkhDrvdNaDugR9Y=LEnbcVHxjxJS0UFcMg@mail.gmail.com>
 <87tuoambdb.wl-maz@kernel.org>
 <CAMdYzYo2+h+=39cw1t=11HUih-O+NUs4hhNaPbrU6si-AbqNiA@mail.gmail.com>
 <871rbdt4tu.wl-maz@kernel.org>
 <678e9950-dd85-abb2-a104-07a4db1fad49@rock-chips.com>
 <87k0p4m0gm.wl-maz@kernel.org>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <8d2e22f5-1c1b-e795-8757-ae078446d961@rock-chips.com>
Date: Fri, 16 Apr 2021 09:13:38 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <87k0p4m0gm.wl-maz@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210415_181347_871045_969F4B88 
X-CRM114-Status: GOOD (  23.78  )
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

SGkgTWFyYywKCk9uIDIwMjEvNC8xNSDkuIvljYg0OjExLCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4g
SGkgS2V2ZXIsCj4KPiBPbiBUaHUsIDE1IEFwciAyMDIxIDA4OjI0OjMzICswMTAwLAo+IEtldmVy
IFlhbmcgPGtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+IHdyb3RlOgo+PiBIaSBNYXJjLCBQZXRl
ciwKPj4KPj4gIMKgwqDCoCBSSzM1NnggR0lDIGhhcyB0d28gaXNzdWVzOgo+Pgo+PiAxLiBHSUMg
b25seSBzdXBwb3J0IDMyYml0IGFkZHJlc3Mgd2hpbGUgcmszNTZ4IHN1cHBvcnRzIDhHQiBERFIg
U0RSQU0sCj4+IHNvIHdlIHVzZSBaT05FX0RNQTMyIHRvIGZpeCB0aGlzIGlzc3VlOwo+IFdoYXQg
dHJhbnNhY3Rpb25zIGRvZXMgdGhpcyBhZmZlY3QgZXhhY3RseT8KVGhlIEdJQyBvbiByazM1Nngg
aXMgYSAzMmJpdCBtYXN0ZXIsIHdoaWNoIG1lYW5zIGFsbCB0aGUgc3BhY2UgaXRzIGxvZ2ljIApu
ZWVkIHRvIGFjY2VzcyBzaG91bGQgYmUgaW4gdGhlIDRHQiByYW5nZS4KPiBPbmx5IHNvbWUgSVRT
IHRhYmxlcz8gT3IKPiBhbGwgb2YgdGhlbSwgaW5jbHVkaW5nIHRoZSBjb21tYW5kIHF1ZXVlPyBX
aGF0IGFib3V0IHRoZSBjb25maWd1cmF0aW9uCj4gYW5kIHBlbmRpbmcgdGFibGVzIGFzc29jaWF0
ZWQgd2l0aCB0aGUgcmVkaXN0cmlidXRvcnM/Cj4KPj4gMi4gR0lDIHZlcnNpb24gaXMgcjFwNi0w
MHJlbDAsIFJLMzU2eCBpbnRlcmNvbm5lY3QgZG9lcyBub3Qgc3VwcG9ydAo+PiBHSUMgYW5kIENQ
VSBzbm9vcCB0byBlYWNoIG90aGVyLCBoZW5jZSB0aGUgR0lDIGRvZXMgbm90IHN1cHBvcnQgdGhl
Cj4+IHNoYXJlYWJpbGl0eSBmZWF0dXJlLsKgIFRoZSByZWFkIG9mIHJlZ2lzdGVyIHZhbHVlIGZv
ciBzaGFyZWFiaWxpdHkKPj4gZmVhdHVyZSBkb2VzIG5vdCByZXR1cm4gYXMgZXhwZWN0IGluIEdJ
Q1IgYW5kIEdJVFMsIHNvIHdlIGhhdmUgdG8KPj4gd29ya2Fyb3VuZCBmb3IgaXQuCj4gSG93IGFi
b3V0IHRoZSBjYWNoZWFiaWxpdHkgYXR0cmlidXRlPyBDYW4geW91IHBsZWFzZSBwcm92aWRlIHRo
ZSBleGFjdAo+IHNldCBvZiBhdHRyaWJ1dGVzIHRoYXQgdGhpcyBzeXN0ZW0gYWN0dWFsbHkgc3Vw
cG9ydHMgZm9yIGVhY2ggb2YgdGhlCj4gSVRTIGFuZCByZWRpc3RyaWJ1dG9yIGJhc2UgcmVnaXN0
ZXJzPwoKVGhlIHNoYXJlYWJpbGl0eSBhdHRyaWJ1dGVzIGluIEdJQ1JfUEVOREJBU0VFUiwgR0lD
Ul9QUk9QQkFTRVIsIApHSVRTX0JBU0VSbiwgR0lUU19DQkFTRVIgZGVmYXVsdCB2YWx1ZSBpcyAw
YjAwLCB3aGVuIHdlIHNldCAwYjAxIHRoZW4gCnJlYWQgcmV0dXJucyAwYjAxLgoKU2luY2UgdGhl
cmUgaXMgbm8gQUNFIGNvaGVyZW5jeSBpbnRlcmZhY2UgZm9yIHRoaXMgR0lDIGNvbnRyb2xsZXIs
IGFsbCAKdGhlIGNhY2hlYWJpbGl0eSBpbiB0aGUgR0lDIGlzIG5vdCBzdXBwb3J0IGluIGhhcmR3
YXJlLgoKPgo+IEFsc28sIHBsZWFzZSBwcm92aWRlIGVycmF0YSBudW1iZXJzIGZvciB0aGVzZSB0
d28gaXNzdWVzIHNvIHRoYXQgd2UKPiBjYW4gcHJvcGVybHkgZG9jdW1lbnQgdGhlbSBhbmQgdHJh
Y2sgdGhlIHdvcmthcm91bmRzLgoKV2hhdCBraW5kIG9mIGVycmF0YSBkbyB5b3UgbmVlZCwgY291
bGQgeW91IHBsZWFzZSBzaGFyZSBhbnkga2luZCBvZiAKZXhhbXBsZSBjbG9zZSB0byB0aGlzIGNh
c2U/CgpXZSBjb25zaWRlciB0aGlzIGFzIGEgU29DIGltcGxlbWVudCBkZXNpZ24gaW5zdGVhZCBv
ZiBhIGJ1Zywgc28gd2Ugd2lsbCAKYWRkIGRvY3VtZW50IGluIFJLMzU2WMKgIFRSTSB0byBkZXNj
cmliZSB0aGUgR0lDIGRlc2lnbiwgYnV0IG5vIGlkZWEgaG93IAp0byBwcm92aWRlIHRoZSBlcnJh
dGEuCgpIZXJlIGlzIHRoZSBzaGFyZWFiaWx5IGF0dHJpYnV0ZSBmcm9tIEFSTSBHSUMgYXJjaGl0
ZWN0dXJlIHNwZWNpZmljYXRpb246ClNoYXJlYWJpbGl0eSwgYml0cyBbMTE6MTBdIChmcm9tIEdJ
VFNfQ0JBU0VSKQpJbmRpY2F0ZXMgdGhlIFNoYXJlYWJpbGl0eSBhdHRyaWJ1dGVzIG9mIGFjY2Vz
c2VzIHRvIHRoZSBjb21tYW5kIHF1ZXVlLiAKVGhlIHBvc3NpYmxlIHZhbHVlcyBvZiB0aGlzIGZp
ZWxkIGFyZToKMGIwMCBOb24tc2hhcmVhYmxlLgowYjAxIElubmVyIFNoYXJlYWJsZS4KMGIxMCBP
dXRlciBTaGFyZWFibGUuCjBiMTEgUmVzZXJ2ZWQuIFRyZWF0ZWQgYXMgMGIwMC4KSXQgaXMgSU1Q
TEVNRU5UQVRJT04gREVGSU5FRCB3aGV0aGVyIHRoaXMgZmllbGQgaGFzIGEgZml4ZWQgdmFsdWUg
b3IgY2FuIApiZSBwcm9ncmFtbWVkIGJ5IHNvZnR3YXJlLiBJbXBsZW1lbnRpbmcgdGhpcyBmaWVs
ZCB3aXRoIGEgZml4ZWQgdmFsdWUgaXMgCmRlcHJlY2F0ZWQuCk9uIGEgV2FybSByZXNldCwgdGhp
cyBmaWVsZCByZXNldHMgdG8gYW4gYXJjaGl0ZWN0dXJhbGx5IFVOS05PV04gdmFsdWUKCkFzIHlv
dSBjYW4gc2VlLCAiSW1wbGVtZW50aW5nIHRoaXMgZmllbGQgd2l0aCBhIGZpeGVkIHZhbHVlIGlz
IApkZXByZWNhdGVkIiwgc28gc29mdHdhcmUgc2hvdWxkIHByb2dyYW0gdGhpcyBmaWVsZCB0byAn
MGIwMCAKTm9uLXNoYXJlYWJsZScgaWYgdGhlIFNvQyBkZXNpZ24gZG9lcyBub3Qgc3VwcG9ydCB0
aGUgY2FjaGUgc2hhcmVhYmlsaXR5LgoKVGhhbmtzLAotIEtldmVyCj4KPiBUaGFua3MsCj4KPiAJ
TS4KPgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
