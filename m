Return-Path: <SRS0=vRnG=HY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 641A5C433E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Feb 2021 04:19:58 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 389E764E44
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Feb 2021 04:19:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 389E764E44
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=u0gz0P7z6m7QRcDqqk6LbbCRiPC6+mfjQyTHh5e4HVc=; b=wKTzayH+7SQqliHrE0FCwMR/8
	dJNNMqhZ0tllGvtkDFjeCwalV52NO3Qc9y8kwANOcPwHRWbWUcn3Rph4wadHab3GZgsaUOot6s1iS
	dnPwBlt9ZfF2HS3IwMoQKbFC20Qz63ZHM/1w7/VZNosTYg3adA5i3br8IRs5IH6wyoFCHR/oh6+qN
	9zrUFHaYSHgIJXnlkzafE0GrCDq0rE6hG5C1Grcgw3ZU8bCgC9qEGrNLSALuM4lEYfp5lzyKDArqy
	NSzIexAjbPJB4xbuV69kvDRUOtWX/Ck6HuvXICJzJ/sJbuvH0r2XbDNvZZYwbD0C6nyFRcq5TSM0y
	IWaOKxZSg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lE2hG-000576-Vk; Mon, 22 Feb 2021 04:19:47 +0000
Received: from regular1.263xmail.com ([211.150.70.195])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lE2hC-00055N-VA
 for linux-rockchip@lists.infradead.org; Mon, 22 Feb 2021 04:19:45 +0000
Received: from localhost (unknown [192.168.167.16])
 by regular1.263xmail.com (Postfix) with ESMTP id 981171C11;
 Mon, 22 Feb 2021 12:19:04 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.31.83] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P32470T140679103641344S1613967544149545_; 
 Mon, 22 Feb 2021 12:19:04 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <4925c1eead27d0d36bf4c7d588184ee1>
X-RL-SENDER: xxm@rock-chips.com
X-SENDER: xxm@rock-chips.com
X-LOGIN-NAME: xxm@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_v4_1/2=5d_dt-bindings=3a_rockchip=3a_Add_D?=
 =?UTF-8?B?ZXNpZ25XYXJlIGJhc2VkIFBDSWUgY29udHJvbGxlcuOAkOivt+azqOaEj++8jA==?=
 =?UTF-8?B?6YKu5Lu255Sxa3N3aWxjenluc2tpQGdtYWlsLmNvbeS7o+WPkeOAkQ==?=
To: =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>
References: <20210127022406.820975-1-xxm@rock-chips.com>
 <YDMZB94qMkpOx38Q@rocinante>
From: xxm <xxm@rock-chips.com>
Message-ID: <01e5ef9b-aef1-64ed-88e6-de74ea3e3e5b@rock-chips.com>
Date: Mon, 22 Feb 2021 12:19:03 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <YDMZB94qMkpOx38Q@rocinante>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210221_231943_744932_9A160C00 
X-CRM114-Status: GOOD (  11.35  )
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 Bjorn Helgaas <helgaas@kernel.org>, Johan Jonker <jbx6244@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgS3J6eXN6dG9mLAoK5ZyoIDIwMjEvMi8yMiAxMDozNywgS3J6eXN6dG9mIFdpbGN6ecWEc2tp
IOWGmemBkzoKPiBIaSBTaW1vbiwKPgo+IFsuLi5dCj4+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlm
aWVyOiAoR1BMLTIuMCBPUiBCU0QtMi1DbGF1c2UpCj4gVGhlIGRyaXZlciBpcyBvbmx5IGJhc2Vk
IG9uIEdQTCB2Mi4wLCBzaG91bGQgdGhpcyBiZSB0aGUgc2FtZSwgb3IgaXMKPiB0aGVyZSBhIHJl
YXNvbiBmb3IgZHVhbC1saWNlbnNlPwpXaWxsIHJlbW92ZSBCU0QtMi1DbGF1c2UKPiBbLi4uXQo+
PiArdGl0bGU6IERlc2lnbldhcmUgYmFzZWQgUENJZSBSQyBjb250cm9sbGVyIG9uIFJvY2tjaGlw
IFNvQ3MKPiBbLi4uXQo+Cj4gV2hhdCBkb2VzIHRoZSAiUkMiIGhlcmUgc3RhbmRzIGZvcj8gIFdv
dWxkIGl0IGJlICJSb2NrY2hpcCI/ICBJZiBzbywKPiB0aGVuIHBlcmhhcHMgZHJvcHBpbmcgaXQg
d291bGQgYmUgZmluZSB0byBkbywgYXMgcmVzdCBvZiB0aGUgdGl0bGUKPiBtZW50aW9ucyAiUm9j
a2NoaXAgU29DcyIuIiAgV2hhdCBkbyB5b3UgdGhpbms/CgpSQyA9IFJvb3QgQ29tcGxleCwganVz
dCB0byBkaXN0aW5ndWlzaCAiRVAiKEVuZCBQb2ludCksIGJ1dCBkcm9wICJSQyIgCnNlZW1zIGZp
bmUuCgpTaW1vbgoKPiBLcnp5c3p0b2YKPgo+Cj4KCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
