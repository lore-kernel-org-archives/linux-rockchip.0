Return-Path: <SRS0=/gBD=NP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 570C1C4338F
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 02:48:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E549860FDA
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 02:48:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E549860FDA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=q8KSiAqP77R3wrKH61DtyUJ9x5seUKLJUYaB8bz44wU=; b=2holw3aGVt6lSfibTxeAnytBdQ
	24uLzwfjCqH83BeajwbJyWBCTMwncuQDdYCakyb2SZblV6MmF1BiMrrcevMGFdt1DHzIYRRsZ2SDt
	7rPXQ4hmTx3+2oO1czp30Cf2t/GR6FjYfQya/L1wAodFKR18pBbG2EVH3bpBx8iXVQYT3ORZ2Oo5N
	PKwnE0IqklpV6RrltmyB6lrhh9InEm0Clh2WWr4HITXiBU/kKDIpnpyGaAnCDoqUP2/PgPI5vaW8K
	ObH87X0peJLiOnWgjS0APBGwQ0ZABSDNDNqJb10EaCBg4ZoHj8VRrh/a4RZ52fTzNOZIyDp8QZhao
	udFOcERw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIMU7-001Hww-Ae; Tue, 24 Aug 2021 02:48:19 +0000
Received: from regular1.263xmail.com ([211.150.70.202])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIMU4-001HvU-En
 for linux-rockchip@lists.infradead.org; Tue, 24 Aug 2021 02:48:17 +0000
Received: from localhost (unknown [192.168.167.235])
 by regular1.263xmail.com (Postfix) with ESMTP id EE3B6808;
 Tue, 24 Aug 2021 10:48:08 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.19] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P32762T139760316184320S1629773288152537_; 
 Tue, 24 Aug 2021 10:48:08 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <d93d28eb9fc7cd6118c5e0f95ce892d3>
X-RL-SENDER: sugar.zhang@rock-chips.com
X-SENDER: zxg@rock-chips.com
X-LOGIN-NAME: sugar.zhang@rock-chips.com
X-FST-TO: alsa-devel@alsa-project.org
X-RCPT-COUNT: 6
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_15/15=5d_ASoC=3a_dt-bindings=3a_rockchip?=
 =?UTF-8?B?OiBpMnM6IERvY3VtZW50IHByb3BlcnR5ICdjbGstdHJjbSfjgJDor7fms6jmhI8=?=
 =?UTF-8?B?77yM6YKu5Lu255Sxcm9iaGVycmluZzJAZ21haWwuY29t5Luj5Y+R44CR?=
To: Rob Herring <robh@kernel.org>
Cc: broonie@kernel.org, heiko@sntech.de, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, alsa-devel@alsa-project.org
References: <1629715710-21137-1-git-send-email-sugar.zhang@rock-chips.com>
 <1629716132-21544-1-git-send-email-sugar.zhang@rock-chips.com>
 <YSPckWacS4kk270r@robh.at.kernel.org>
From: sugar zhang <sugar.zhang@rock-chips.com>
Message-ID: <068b1fdc-3f93-6bcd-247b-95e68e1ba8e7@rock-chips.com>
Date: Tue, 24 Aug 2021 10:48:07 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <YSPckWacS4kk270r@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_194816_803517_92B22A5C 
X-CRM114-Status: GOOD (  12.10  )
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

Ck9uIDIwMjEvOC8yNCAxOjM2LCBSb2IgSGVycmluZyB3cm90ZToKPiBPbiBNb24sIEF1ZyAyMywg
MjAyMSBhdCAwNjo1NTozMlBNICswODAwLCBTdWdhciBaaGFuZyB3cm90ZToKPj4gVGhpcyBwYXRj
aCBkb2N1bWVudHMgcHJvcGVydHkgJ3JvY2tjaGlwLGNsay10cmNtJyB3aGljaCBpcyB1c2VkCj4+
IHRvIHNwZWNpZnkgdGhlIGxyY2suCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFN1Z2FyIFpoYW5nIDxz
dWdhci56aGFuZ0Byb2NrLWNoaXBzLmNvbT4KPj4gQ2hhbmdlLUlkOiBJNjQ4MTQyYzU3YzU2OGJi
ZWQyMDlmMmI5MTg4YjFmNTM5YTMyODViMgo+IERyb3AgdGhpcy4Kb2theSwgd2lsbCBkbyBpbiB2
Mi4KPj4gLS0tCj4+ICAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvdW5kL3Jv
Y2tjaGlwLWkycy55YW1sIHwgOSArKysrKysrKysKPj4gICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNl
cnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3Mvc291bmQvcm9ja2NoaXAtaTJzLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3Mvc291bmQvcm9ja2NoaXAtaTJzLnlhbWwKPj4gaW5kZXggMTFlOTExYS4uOGQ5ZGZl
ZCAxMDA2NDQKPj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvdW5k
L3JvY2tjaGlwLWkycy55YW1sCj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9zb3VuZC9yb2NrY2hpcC1pMnMueWFtbAo+PiBAQCAtNzIsNiArNzIsMTUgQEAgcHJvcGVy
dGllczoKPj4gICAgIHJlc2V0czoKPj4gICAgICAgbWF4SXRlbXM6IDIKPj4gICAKPj4gKyAgcm9j
a2NoaXAsY2xrLXRyY206Cj4+ICsgICAgJHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5p
dGlvbnMvdWludDMyCj4+ICsgICAgZGVmYXVsdDogMAo+PiArICAgIGRlc2NyaXB0aW9uOgo+PiAr
ICAgICAgdHggYW5kIHJ4IGxyY2svYmNsayBjb21tb24gdXNlLgo+PiArICAgICAgMDogYm90aCB0
eF9scmNrL2JjbGsgYW5kIHJ4X2xyY2svYmNsayBhcmUgdXNlZAo+PiArICAgICAgMTogb25seSB0
eF9scmNrL2JjbGsgaXMgdXNlZAo+PiArICAgICAgMjogb25seSByeF9scmNrL2JjbGsgaXMgdXNl
ZAo+IFNvdW5kcyBsaWtlIGNvbnN0cmFpbnRzLiBNYWtlIGEgc2NoZW1hLgp3aWxsIHNwbGl0IGlu
dG8gdHdvIHByb3BlcnRpZXM6IHJvY2tjaGlwLHRyY20tc3luYy10eC1vbmx5LCAKcm9ja2NoaXAs
dHJjbS1zeW5jLXJ4LW9ubHkuCj4+ICsKPj4gICAgIHJvY2tjaGlwLGNhcHR1cmUtY2hhbm5lbHM6
Cj4+ICAgICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3VpbnQzMgo+
PiAgICAgICBkZWZhdWx0OiAyCj4+IC0tIAo+PiAyLjcuNAo+Pgo+Pgo+Pgo+Pgo+Cj4KLS0gCkJl
c3QgUmVnYXJkcyEK5byg5a2m5bm/L1N1Z2FyCueRnuiKr+W+rueUteWtkOiCoeS7veaciemZkOWF
rOWPuApSb2NrY2hpcCBFbGVjdHJvbmljcyBDby4sIEx0ZC4KCgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
