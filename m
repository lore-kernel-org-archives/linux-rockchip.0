Return-Path: <SRS0=A12b=J3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06772C433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Apr 2021 00:47:51 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 74B03613F7
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Apr 2021 00:47:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 74B03613F7
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Cc:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C9V383r6EOY+QfF6i4MdDJNZtV5OTuEzeQgyHaqvAzY=; b=dKKKDhZT/6HN+GTswEKITJSC8
	HM8h7O2cqzpxyB/YkSxXsfb5tVdWyi/0dx7mU3LtpQZNWdJCjyMf85r+L5F3vgPPeMUqe5uQjv5sh
	nwpMbGcuTQSG+UM7X0Bhs5hMm8ZKxrQ1sHTKLHm4ftr2ekhtHkcu7/9xsPhcO3ZLKMgzBaT+1gpC3
	CQ6rAD61T3koZh+0+7Er+9UqxLimnVfSFhlRm84CPD8UsgVxXaoNMnFot/Xdsy0LVqUZ26kPh2Q9L
	Zz4IJpOjX9AKMtNeLB9sTU9Ic/hKDA7lmx0UuC//n34r4M0P1Xsv2a7KFktEjjAKmzhi0QDbHKcgF
	x989jjzUg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcHJo-006omH-Bo; Fri, 30 Apr 2021 00:47:44 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcHJb-006okz-JK; Fri, 30 Apr 2021 00:47:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Cc:Sender:Reply-To:Content-ID:Content-Description;
 bh=3gHiy7CYTTVtdiRPG19wnrkE4IEQ1xwYkDHc4MJ7haE=; b=lCN5YPT7XHRWNfmGLvb4pu0ULN
 +CFHh/kEnTkmm8Nl2NM73wa+vtwEEFwcDDFBQBrBiJpYY8osruUD1DlHllDxHGipPhUrzf0WaRqdK
 AdOgCTioQVDtNke+VoMEw7fOfKzGsapXXN2rTzYISs3CK/o0oK30FjYQd0fZWL4KoyE5FmLaOlDKm
 BX1m9LF0DHj03AMmqc/23JUgmRvO6yVsrbGKnR/PpWYA/AzHrLvlz6sw5z078KwH0ED/yB6PqMO2A
 AXowgbNp76X7J6o081v6JFXP5sJ8zZ6xm7elD4YDAASSYdyMhwHp5MZJKKQmX9PMIjDGmFG3jjV9j
 6xLQ+ohA==;
Received: from regular1.263xmail.com ([211.150.70.205])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcHJV-0013D2-TS; Fri, 30 Apr 2021 00:47:28 +0000
Received: from localhost (unknown [192.168.167.32])
 by regular1.263xmail.com (Postfix) with ESMTP id D75C7842;
 Fri, 30 Apr 2021 08:47:20 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.151] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P18569T140528335173376S1619743638185091_; 
 Fri, 30 Apr 2021 08:47:19 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <901d6e6f973585aaf2c3c4ed15f8fbda>
X-RL-SENDER: cl@rock-chips.com
X-SENDER: cl@rock-chips.com
X-LOGIN-NAME: cl@rock-chips.com
X-FST-TO: maz@kernel.org
X-RCPT-COUNT: 30
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Cc: cl@rock-chips.com, heiko@sntech.de, jagan@amarulasolutions.com,
 wens@csie.org, uwe@kleine-koenig.org, mail@david-bauer.net,
 jbx6244@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 jensenhuang@friendlyarm.com, michael@amarulasolutions.com, cnsztl@gmail.com,
 devicetree@vger.kernel.org, ulf.hansson@linaro.org,
 linux-mmc@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-serial@vger.kernel.org, linux-i2c@vger.kernel.org,
 jay.xu@rock-chips.com, shawn.lin@rock-chips.com, david.wu@rock-chips.com,
 zhangqing@rock-chips.com, huangtao@rock-chips.com, wim@linux-watchdog.org,
 linux@roeck-us.net, jamie@jamieiles.com, linux-watchdog@vger.kernel.org,
 maz@kernel.org
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_v4_07/10=5d_dt-bindings=3a_soc=3a_rockchip?=
 =?UTF-8?B?OiBDb252ZXJ0IGdyZi50eHQgdG8gWUFNTOOAkOivt+azqOaEj++8jOmCruS7tg==?=
 =?UTF-8?B?55Sxcm9iaGVycmluZzJAZ21haWwuY29t5Luj5Y+R44CR?=
To: Rob Herring <robh@kernel.org>
References: <20210429081151.17558-1-cl@rock-chips.com>
 <20210429081321.17855-1-cl@rock-chips.com>
 <20210429212413.GA1794356@robh.at.kernel.org>
From: =?UTF-8?B?6ZmI5Lqu?= <cl@rock-chips.com>
Message-ID: <24118cb2-dc11-eef1-b0e3-26318c2615ab@rock-chips.com>
Date: Fri, 30 Apr 2021 08:47:18 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210429212413.GA1794356@robh.at.kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210429_174726_305378_84D5F0AD 
X-CRM114-Status: GOOD (  21.95  )
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
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CtTaIDIwMjEvNC8zMCDJz87nNToyNCwgUm9iIEhlcnJpbmcg0LS1wDoKPiBPbiBUaHUsIEFwciAy
OSwgMjAyMSBhdCAwNDoxMzoyMVBNICswODAwLCBjbEByb2NrLWNoaXBzLmNvbSB3cm90ZToKPj4g
RnJvbTogTGlhbmcgQ2hlbiA8Y2xAcm9jay1jaGlwcy5jb20+Cj4+Cj4+IEN1cnJlbnQgZHRzIGZp
bGVzIHdpdGggJ2dyZicgbm9kZXMgYXJlIG1hbnVhbGx5IHZlcmlmaWVkLiBJbiBvcmRlciB0bwo+
PiBhdXRvbWF0ZSB0aGlzIHByb2Nlc3MgZ3JmLnR4dCBoYXMgdG8gYmUgY29udmVydGVkIHRvIFlB
TUwuCj4+Cj4+IEFkZCBuZXcgZGVzY3JpcHRpb25zIGZvcjoKPj4gInJvY2tjaGlwLHJrMzU2OC1n
cmYiLCAic3lzY29uIiwgInNpbXBsZS1tZmQiCj4+ICJyb2NrY2hpcCxyazM1NjgtcG11Z3JmIiwg
InN5c2NvbiIsICJzaW1wbGUtbWZkIgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBMaWFuZyBDaGVuIDxj
bEByb2NrLWNoaXBzLmNvbT4KPj4gLS0tCj4+ICAgLi4uL2RldmljZXRyZWUvYmluZGluZ3Mvc29j
L3JvY2tjaGlwL2dyZi50eHQgIHwgNjEgLS0tLS0tLS0tLS0tLS0tLS0tLQo+PiAgIC4uLi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3NvYy9yb2NrY2hpcC9ncmYueWFtbCB8IDYwICsrKysrKysrKysrKysr
KysrKwo+PiAgIDIgZmlsZXMgY2hhbmdlZCwgNjAgaW5zZXJ0aW9ucygrKSwgNjEgZGVsZXRpb25z
KC0pCj4+ICAgZGVsZXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9zb2Mvcm9ja2NoaXAvZ3JmLnR4dAo+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29jL3JvY2tjaGlwL2dyZi55YW1sCj4+Cj4+IGRp
ZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29jL3JvY2tjaGlw
L2dyZi50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29jL3JvY2tjaGlw
L2dyZi50eHQKPj4gZGVsZXRlZCBmaWxlIG1vZGUgMTAwNjQ0Cj4+IGluZGV4IGY5NjUxMWFhMzg5
Ny4uMDAwMDAwMDAwMDAwCj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9zb2Mvcm9ja2NoaXAvZ3JmLnR4dAo+PiArKysgL2Rldi9udWxsCj4+IEBAIC0xLDYxICswLDAg
QEAKPj4gLSogUm9ja2NoaXAgR2VuZXJhbCBSZWdpc3RlciBGaWxlcyAoR1JGKQo+PiAtCj4+IC1U
aGUgZ2VuZXJhbCByZWdpc3RlciBmaWxlIHdpbGwgYmUgdXNlZCB0byBkbyBzdGF0aWMgc2V0IGJ5
IHNvZnR3YXJlLCB3aGljaAo+PiAtaXMgY29tcG9zZWQgb2YgbWFueSByZWdpc3RlcnMgZm9yIHN5
c3RlbSBjb250cm9sLgo+PiAtCj4+IC1Gcm9tIFJLMzM2OCBTb0NzLCB0aGUgR1JGIGlzIGRpdmlk
ZWQgaW50byB0d28gc2VjdGlvbnMsCj4+IC0tIEdSRiwgdXNlZCBmb3IgZ2VuZXJhbCBub24tc2Vj
dXJlIHN5c3RlbSwKPj4gLS0gU0dSRiwgdXNlZCBmb3IgZ2VuZXJhbCBzZWN1cmUgc3lzdGVtLAo+
PiAtLSBQTVVHUkYsIHVzZWQgZm9yIGFsd2F5cyBvbiBzeXN0ZW0KPj4gLQo+PiAtT24gUkszMzI4
IFNvQ3MsIHRoZSBHUkYgYWRkcyBhIHNlY3Rpb24gZm9yIFVTQjJQSFlHUkYsCj4+IC0KPj4gLU9O
IFJLMzMwOCBTb0MsIHRoZSBHUkYgaXMgZGl2aWRlZCBpbnRvIGZvdXIgc2VjdGlvbnM6Cj4+IC0t
IEdSRiwgdXNlZCBmb3IgZ2VuZXJhbCBub24tc2VjdXJlIHN5c3RlbSwKPj4gLS0gU0dSRiwgdXNl
ZCBmb3IgZ2VuZXJhbCBzZWN1cmUgc3lzdGVtLAo+PiAtLSBERVRFQ1RHUkYsIHVzZWQgZm9yIGF1
ZGlvIGNvZGVjIHN5c3RlbSwKPj4gLS0gQ09SRUdSRiwgdXNlZCBmb3IgcHZ0bSwKPj4gLQo+PiAt
UmVxdWlyZWQgUHJvcGVydGllczoKPj4gLQo+PiAtLSBjb21wYXRpYmxlOiBHUkYgc2hvdWxkIGJl
IG9uZSBvZiB0aGUgZm9sbG93aW5nOgo+PiAtICAgLSAicm9ja2NoaXAscHgzMC1ncmYiLCAic3lz
Y29uIjogZm9yIHB4MzAKPj4gLSAgIC0gInJvY2tjaGlwLHJrMzAzNi1ncmYiLCAic3lzY29uIjog
Zm9yIHJrMzAzNgo+PiAtICAgLSAicm9ja2NoaXAscmszMDY2LWdyZiIsICJzeXNjb24iOiBmb3Ig
cmszMDY2Cj4+IC0gICAtICJyb2NrY2hpcCxyazMxODgtZ3JmIiwgInN5c2NvbiI6IGZvciByazMx
ODgKPj4gLSAgIC0gInJvY2tjaGlwLHJrMzIyOC1ncmYiLCAic3lzY29uIjogZm9yIHJrMzIyOAo+
PiAtICAgLSAicm9ja2NoaXAscmszMjg4LWdyZiIsICJzeXNjb24iOiBmb3IgcmszMjg4Cj4+IC0g
ICAtICJyb2NrY2hpcCxyazMzMDgtZ3JmIiwgInN5c2NvbiI6IGZvciByazMzMDgKPj4gLSAgIC0g
InJvY2tjaGlwLHJrMzMyOC1ncmYiLCAic3lzY29uIjogZm9yIHJrMzMyOAo+PiAtICAgLSAicm9j
a2NoaXAscmszMzY4LWdyZiIsICJzeXNjb24iOiBmb3IgcmszMzY4Cj4+IC0gICAtICJyb2NrY2hp
cCxyazMzOTktZ3JmIiwgInN5c2NvbiI6IGZvciByazMzOTkKPj4gLSAgIC0gInJvY2tjaGlwLHJ2
MTEwOC1ncmYiLCAic3lzY29uIjogZm9yIHJ2MTEwOAo+PiAtLSBjb21wYXRpYmxlOiBERVRFQ1RH
UkYgc2hvdWxkIGJlIG9uZSBvZiB0aGUgZm9sbG93aW5nOgo+PiAtICAgLSAicm9ja2NoaXAscmsz
MzA4LWRldGVjdC1ncmYiLCAic3lzY29uIjogZm9yIHJrMzMwOAo+PiAtLSBjb21wYXRpbGJlOiBD
T1JFR1JGIHNob3VsZCBiZSBvbmUgb2YgdGhlIGZvbGxvd2luZzoKPj4gLSAgIC0gInJvY2tjaGlw
LHJrMzMwOC1jb3JlLWdyZiIsICJzeXNjb24iOiBmb3IgcmszMzA4Cj4+IC0tIGNvbXBhdGlibGU6
IFBNVUdSRiBzaG91bGQgYmUgb25lIG9mIHRoZSBmb2xsb3dpbmc6Cj4+IC0gICAtICJyb2NrY2hp
cCxweDMwLXBtdWdyZiIsICJzeXNjb24iOiBmb3IgcHgzMAo+PiAtICAgLSAicm9ja2NoaXAscmsz
MzY4LXBtdWdyZiIsICJzeXNjb24iOiBmb3IgcmszMzY4Cj4+IC0gICAtICJyb2NrY2hpcCxyazMz
OTktcG11Z3JmIiwgInN5c2NvbiI6IGZvciByazMzOTkKPj4gLS0gY29tcGF0aWJsZTogU0dSRiBz
aG91bGQgYmUgb25lIG9mIHRoZSBmb2xsb3dpbmc6Cj4+IC0gICAtICJyb2NrY2hpcCxyazMyODgt
c2dyZiIsICJzeXNjb24iOiBmb3IgcmszMjg4Cj4+IC0tIGNvbXBhdGlibGU6IFVTQjJQSFlHUkYg
c2hvdWxkIGJlIG9uZSBvZiB0aGUgZm9sbG93aW5nOgo+PiAtICAgLSAicm9ja2NoaXAscHgzMC11
c2IycGh5LWdyZiIsICJzeXNjb24iOiBmb3IgcHgzMAo+PiAtICAgLSAicm9ja2NoaXAscmszMzI4
LXVzYjJwaHktZ3JmIiwgInN5c2NvbiI6IGZvciByazMzMjgKPj4gLS0gY29tcGF0aWJsZTogVVNC
R1JGIHNob3VsZCBiZSBvbmUgb2YgdGhlIGZvbGxvd2luZzoKPj4gLSAgIC0gInJvY2tjaGlwLHJ2
MTEwOC11c2JncmYiLCAic3lzY29uIjogZm9yIHJ2MTEwOAo+PiAtLSByZWc6IHBoeXNpY2FsIGJh
c2UgYWRkcmVzcyBvZiB0aGUgY29udHJvbGxlciBhbmQgbGVuZ3RoIG9mIG1lbW9yeSBtYXBwZWQK
Pj4gLSAgcmVnaW9uLgo+PiAtCj4+IC1FeGFtcGxlOiBHUkYgYW5kIFBNVUdSRiBvZiBSSzMzOTkg
U29Dcwo+PiAtCj4+IC0JcG11Z3JmOiBzeXNjb25AZmYzMjAwMDAgewo+PiAtCQljb21wYXRpYmxl
ID0gInJvY2tjaGlwLHJrMzM5OS1wbXVncmYiLCAic3lzY29uIjsKPj4gLQkJcmVnID0gPDB4MCAw
eGZmMzIwMDAwIDB4MCAweDEwMDA+Owo+PiAtCX07Cj4+IC0KPj4gLQlncmY6IHN5c2NvbkBmZjc3
MDAwMCB7Cj4+IC0JCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszMzk5LWdyZiIsICJzeXNjb24i
Owo+PiAtCQlyZWcgPSA8MHgwIDB4ZmY3NzAwMDAgMHgwIDB4MTAwMDA+Owo+PiAtCX07Cj4+IGRp
ZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29jL3JvY2tjaGlw
L2dyZi55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9yb2NrY2hp
cC9ncmYueWFtbAo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+PiBpbmRleCAwMDAwMDAwMDAwMDAu
LjkzMjMxYjk1NTU0Ygo+PiAtLS0gL2Rldi9udWxsCj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9zb2Mvcm9ja2NoaXAvZ3JmLnlhbWwKPj4gQEAgLTAsMCArMSw2MCBA
QAo+PiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+PiArJVlBTUwgMS4yCj4+
ICstLS0KPj4gKyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvc29jL3JvY2tjaGlw
L2dyZi55YW1sIwo+PiArJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1h
cy9jb3JlLnlhbWwjCj4+ICsKPj4gK3RpdGxlOiBSb2NrY2hpcCBHZW5lcmFsIFJlZ2lzdGVyIEZp
bGVzCj4+ICsKPj4gK21haW50YWluZXJzOgo+PiArICAtIEhlaWtvIFN0dWVibmVyIDxoZWlrb0Bz
bnRlY2guZGU+Cj4+ICsKPj4gK3Byb3BlcnRpZXM6Cj4+ICsgIGNvbXBhdGlibGU6Cj4+ICsgICAg
LSBpdGVtczoKPiBUaGUgJy0nIGlzIHRoZSBzb3VyY2Ugb2YgeW91ciBlcnJvci4KVGhhbmtzLgo+
Cj4+ICsgICAgICAgIC0gZW51bToKPj4gKyAgICAgICAgICAgIC0gcm9ja2NoaXAscHgzMC1ncmYK
Pj4gKyAgICAgICAgICAgIC0gcm9ja2NoaXAscHgzMC1wbXVncmYKPj4gKyAgICAgICAgICAgIC0g
cm9ja2NoaXAscHgzMC11c2IycGh5LWdyZgo+PiArICAgICAgICAgICAgLSByb2NrY2hpcCxyazMw
MzYtZ3JmCj4+ICsgICAgICAgICAgICAtIHJvY2tjaGlwLHJrMzA2Ni1ncmYKPj4gKyAgICAgICAg
ICAgIC0gcm9ja2NoaXAscmszMTg4LWdyZgo+PiArICAgICAgICAgICAgLSByb2NrY2hpcCxyazMy
MjgtZ3JmCj4+ICsgICAgICAgICAgICAtIHJvY2tjaGlwLHJrMzI4OC1ncmYKPj4gKyAgICAgICAg
ICAgIC0gcm9ja2NoaXAscmszMjg4LXNncmYKPj4gKyAgICAgICAgICAgIC0gcm9ja2NoaXAscmsz
MzA4LWNvcmUtZ3JmCj4+ICsgICAgICAgICAgICAtIHJvY2tjaGlwLHJrMzMwOC1kZXRlY3QtZ3Jm
Cj4+ICsgICAgICAgICAgICAtIHJvY2tjaGlwLHJrMzMwOC1ncmYKPj4gKyAgICAgICAgICAgIC0g
cm9ja2NoaXAscmszMzI4LWdyZgo+PiArICAgICAgICAgICAgLSByb2NrY2hpcCxyazMzMjgtdXNi
MnBoeS1ncmYKPj4gKyAgICAgICAgICAgIC0gcm9ja2NoaXAscmszMzY4LWdyZgo+PiArICAgICAg
ICAgICAgLSByb2NrY2hpcCxyazMzNjgtcG11Z3JmCj4+ICsgICAgICAgICAgICAtIHJvY2tjaGlw
LHJrMzM5OS1ncmYKPj4gKyAgICAgICAgICAgIC0gcm9ja2NoaXAscmszMzk5LXBtdWdyZgo+PiAr
ICAgICAgICAgICAgLSByb2NrY2hpcCxyazM1NjgtZ3JmCj4+ICsgICAgICAgICAgICAtIHJvY2tj
aGlwLHJrMzU2OC1wbXVncmYKPj4gKyAgICAgICAgICAgIC0gcm9ja2NoaXAscnYxMTA4LWdyZgo+
PiArICAgICAgICAgICAgLSByb2NrY2hpcCxydjExMDgtdXNiZ3JmCj4+ICsgICAgICAgIC0gY29u
c3Q6IHN5c2Nvbgo+PiArICAgICAgICAtIGNvbnN0OiBzaW1wbGUtbWZkCj4gJ3NpbXBsZS1tZmQn
IHdhcyBub3QgaW4gdGhlIG9sZCBiaW5kaW5nLiBUaGF0IGltcGxpZXMgeW91IGhhdmUgY2hpbGQK
PiBub2RlcywgYW5kIGlmIHNvLCB0aGV5IG5lZWQgdG8gYmUgZG9jdW1lbnRlZC4gSSBpbWFnaW5l
IHRoYXQgd2lsbCBtZWFuCj4gc3BsaXR0aW5nIHRoaXMgaW50byBtdWx0aXBsZSBzY2hlbWFzIGlm
IHRoYXQncyB0aGUgY2FzZS4KTWF5YmUgYWRkIHRoZSBjaGlsZCBub2RlcyBhbmQgZG9jdW1lbnQg
aW4gYSBuZXcgc3VibWl0Lgo+PiBkb2N1bWVudGVkCj4+ICsKPj4gKyAgcmVnOgo+PiArICAgIG1h
eEl0ZW1zOiAxCj4+ICsKPj4gK3JlcXVpcmVkOgo+PiArICAtIGNvbXBhdGlibGUKPj4gKyAgLSBy
ZWcKPj4gKwo+PiArYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCj4+ICsKPj4gK2V4YW1wbGVz
Ogo+PiArICAtIHwKPj4gKyAgICBwbXVncmY6IHN5c2NvbkBmZjMyMDAwMCB7Cj4+ICsgICAgICAg
Y29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzOTktcG11Z3JmIiwgInN5c2NvbiIsICJzaW1wbGUt
bWZkIjsKPj4gKyAgICAgICByZWcgPSA8MHhmZjMyMDAwMCAweDEwMDA+Owo+PiArICAgIH07Cj4+
ICsKPj4gKyAgICBncmY6IHN5c2NvbkBmZjc3MDAwMCB7Cj4+ICsgICAgICAgY29tcGF0aWJsZSA9
ICJyb2NrY2hpcCxyazMzOTktZ3JmIiwgInN5c2NvbiIsICJzaW1wbGUtbWZkIjsKPj4gKyAgICAg
ICByZWcgPSA8MHhmZjc3MDAwMCAweDEwMDAwPjsKPj4gKyAgICB9Owo+PiAtLSAKPj4gMi4xNy4x
Cj4+Cj4+Cj4+Cj4KPgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
