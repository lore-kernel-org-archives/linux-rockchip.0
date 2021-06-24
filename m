Return-Path: <SRS0=8D6r=LS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BCAC48BDF
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Jun 2021 08:58:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0611E61248
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Jun 2021 08:58:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0611E61248
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9gHFPXyp2S8A9qbM6tmdBu1rWSf5K2b4OtJYwE7noyk=; b=LZ5+daEXXUN2kV36jBVTlkoSXR
	5c0RyIhhU2HcQiNMku4OPEM6OcruC18p50zlZs4ah3ZkkoLRcEIdDFfyztBJkKq5bicJx/So+Rrhq
	bqBrFRnzFVkLT3wedGBZfScwfpUOH5D695JQVzPTUtyp9zrGRyYqHAzgqhm1fQHQ0nikxqiBR3png
	FOj5CuePiiQJqITGPyGicEN8us1Gfxhs0zkXce/B1PWs29IQ9HleVEXgvPpAbaxzxj11gKnPhxiNl
	oSb/36fQ4RRE8HSYauJ9nxxkxb9yM2+LhhAk0BFsW079b1bKxLzTnFEjwBDjaLTp+5am3bLOdF818
	HUwz0qOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwLC3-00Db9f-O3; Thu, 24 Jun 2021 08:58:39 +0000
Received: from regular1.263xmail.com ([211.150.70.205])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwLBy-00Db55-GV
 for linux-rockchip@lists.infradead.org; Thu, 24 Jun 2021 08:58:36 +0000
Received: from localhost (unknown [192.168.167.69])
 by regular1.263xmail.com (Postfix) with ESMTP id A0540947;
 Thu, 24 Jun 2021 16:58:29 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [192.168.31.83] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P12341T139824069605120S1624525102528264_; 
 Thu, 24 Jun 2021 16:58:25 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <6673199c70e8076af34458f12813a3c3>
X-RL-SENDER: xxm@rock-chips.com
X-SENDER: xxm@rock-chips.com
X-LOGIN-NAME: xxm@rock-chips.com
X-FST-TO: shawn.lin@rock-chips.com
X-RCPT-COUNT: 13
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: Re: [PATCH v9 2/2] PCI: rockchip: Add Rockchip RK356X host controller
 driver
To: =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, Johan Jonker <jbx6244@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 Kever Yang <kever.yang@rock-chips.com>, kernel test robot <lkp@intel.com>,
 Shawn Lin <shawn.lin@rock-chips.com>
References: <20210506023448.169146-1-xxm@rock-chips.com>
 <20210506023544.169196-1-xxm@rock-chips.com>
 <20210623143333.GA15104@lpieralisi>
 <46b3f277-2bde-321d-b616-3f3b41259e4d@rock-chips.com>
 <20210624082314.mw3ilcufswmb635m@pali>
From: xxm <xxm@rock-chips.com>
Message-ID: <64de9d9c-1cc9-bf6f-00c5-2360ddfa4b24@rock-chips.com>
Date: Thu, 24 Jun 2021 16:58:22 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210624082314.mw3ilcufswmb635m@pali>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_015834_828306_7845189C 
X-CRM114-Status: GOOD (  10.70  )
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

SGksCgrlnKggMjAyMS82LzI0IDE2OjIzLCBQYWxpIFJvaMOhciDlhpnpgZM6Cj4gT24gVGh1cnNk
YXkgMjQgSnVuZSAyMDIxIDEwOjA4OjU0IHh4bSB3cm90ZToKPj4g5ZyoIDIwMjEvNi8yMyAyMjoz
MywgTG9yZW56byBQaWVyYWxpc2kg5YaZ6YGTOgo+Pj4gT24gVGh1LCBNYXkgMDYsIDIwMjEgYXQg
MTA6MzU6NDRBTSArMDgwMCwgU2ltb24gWHVlIHdyb3RlOgo+Pj4+ICtzdGF0aWMgaW50IHJvY2tj
aGlwX3BjaWVfc3RhcnRfbGluayhzdHJ1Y3QgZHdfcGNpZSAqcGNpKQo+Pj4+ICt7Cj4+Pj4gKwlz
dHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9ja2NoaXAgPSB0b19yb2NrY2hpcF9wY2llKHBjaSk7Cj4+
Pj4gKwo+Pj4+ICsJLyogUmVzZXQgZGV2aWNlICovCj4+Pj4gKwlncGlvZF9zZXRfdmFsdWVfY2Fu
c2xlZXAocm9ja2NoaXAtPnJzdF9ncGlvLCAwKTsKPj4+PiArCj4+Pj4gKwlyb2NrY2hpcF9wY2ll
X2VuYWJsZV9sdHNzbShyb2NrY2hpcCk7Cj4+Pj4gKwo+Pj4+ICsJLyoKPj4+PiArCSAqIFBDSWUg
cmVxdWlyZXMgdGhlIHJlZmNsayB0byBiZSBzdGFibGUgZm9yIDEwMMK1cyBwcmlvciB0byByZWxl
YXNpbmcKPj4+PiArCSAqIFBFUlNULiBTZWUgdGFibGUgMi00IGluIHNlY3Rpb24gMi42LjIgQUMg
U3BlY2lmaWNhdGlvbnMgb2YgdGhlIFBDSQo+Pj4+ICsJICogRXhwcmVzcyBDYXJkIEVsZWN0cm9t
ZWNoYW5pY2FsIFNwZWNpZmljYXRpb24sIDEuMS4gSG93ZXZlciwgd2UgZG9uJ3QKPj4+PiArCSAq
IGtub3cgaWYgdGhlIHJlZmNsayBpcyBjb21pbmcgZnJvbSBSQydzIFBIWSBvciBleHRlcm5hbCBP
U0MuIElmIGl0J3MKPj4+PiArCSAqIGZyb20gUkMsIHNvIGVuYWJsaW5nIExUU1NNIGlzIHRoZSBq
dXN0IHJpZ2h0IHBsYWNlIHRvIHJlbGVhc2UgI1BFUlNULgo+Pj4+ICsJICogV2UgbmVlZCBtb3Jl
IGV4dHJhIHRpbWUgYXMgYmVmb3JlLCByYXRoZXIgdGhhbiBzZXR0aW5nIGp1c3QKPj4+PiArCSAq
IDEwMHVzIGFzIHdlIGRvbid0IGtub3cgaG93IGxvbmcgc2hvdWxkIHRoZSBkZXZpY2UgbmVlZCB0
byByZXNldC4KPj4+PiArCSAqLwo+Pj4+ICsJbXNsZWVwKDEwMCk7Cj4+PiBBbnkgcmF0aW9uYWxl
IGJlaGluZCB0aGUgdGltZSBjaG9zZW4gPwo+PiBXZSBmb3VuZCBzb21lIGRldmljZSBuZWVkIGFi
b3V0IDMwbXMsIHNvIDEwMG1zIGhlcmUganVzdCBsZWF2ZSBtb3JlIHJvb20gZm9yCj4+IG90aGVy
IGRldmljZXMuCj4gQ2FuIHlvdSBzaGFyZSBpbmZvcm1hdGlvbiB3aGljaCBQQ0llIGNhcmQgbmVl
ZHMgMzBtcz8KPgo+IExhc3QgeWVhciBJIGRpZCB0ZXN0cyB3aXRoIG1vcmUgV2lGaSBBQyBjYXJk
cyBhbmQgInRoZSBzbG93ZXN0IiBvbmUgd2FzCj4gQ29tcGV4IFdMRTEyMTYgd2hpY2ggbmVlZGVk
IGFib3V0IDExbXMgKG1vcmUgdGhhbiAxMG1zKS4gQWxsIG90aGVyIGNhcmRzCj4gd2VyZSBoYXBw
eSB3aXRoIGp1c3QgMS0ybXMuCgpTb3JyeSwgaXQgd2FzIGFib3V0IDUgeWVhcnMgYWdvLCBJIGNh
bid0IGZpbmQgdGhlIHNwZWNpZmljIGNhcmQgbm93LgoKQnkgdGhlIHdheSwgd2UgYWxzbyB0YWtl
IG90aGVyJ3MgdXBzdHJlYW0gY29kZSAibXNsZWVwKDEwMCkiIGFzIGEgcmVmZXJlbmNlLgoKPgo+
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
