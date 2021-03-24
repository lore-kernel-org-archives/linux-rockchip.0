Return-Path: <SRS0=NEY9=IW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84737C433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 02:13:51 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CA6FE61993
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 02:13:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CA6FE61993
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uNxsxJH8obsmYrndI3ynoEi7/0o5rpPtpqyMD8MvERY=; b=N/9RARce03anj6suQoK9c76I1
	dd4gd8di9PFmVLPKMntJg2c9/fXFCZZme0KzVKLgcrnmej0QFP1C315PJhYRyJiON3aDD0o3nhvcp
	Cmy53Yf54sgNG+jrR9QhxNJ4mycIkPkWjOvLW9Brajjx0yRBek3T2Ync2QbaqmTLpyQm1q1HHUEXP
	XD2QPGCgWTvy0gxVhFrDPGN5/fpI/UoQAVmj43ePrFgfANj9AQIy7AYmTSB+Lc9V+DR/s6hSWjJwj
	bKcwncDWQkk3dSuaKkX6fR4b8wtaPCwXECOzngjebPMfsXjIi5SSmA/DXkpVsWtXEGzAofhOjtZih
	cG0CqIoFw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOt1k-00G88W-BP; Wed, 24 Mar 2021 02:13:44 +0000
Received: from regular1.263xmail.com ([211.150.70.205])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOt1P-00G85W-Lo; Wed, 24 Mar 2021 02:13:30 +0000
Received: from localhost (unknown [192.168.167.69])
 by regular1.263xmail.com (Postfix) with ESMTP id A01AE990;
 Wed, 24 Mar 2021 10:12:50 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.236] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P1826T139670268532480S1616551969111653_; 
 Wed, 24 Mar 2021 10:12:49 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <c9bb3d9b648f989d6fa9861f5ae7ad8f>
X-RL-SENDER: zhangqing@rock-chips.com
X-SENDER: zhangqing@rock-chips.com
X-LOGIN-NAME: zhangqing@rock-chips.com
X-FST-TO: linux-arm-kernel@lists.infradead.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_v2_2/3=5d_dt-bindings=3a_Convert_the_rockc?=
 =?UTF-8?B?aGlwIHBvd2VyX2RvbWFpbiB0byBZQU1MIGFuZCBleHRlbmTjgJDor7fms6jmhI8=?=
 =?UTF-8?B?77yM6YKu5Lu255Sxcm9iaGVycmluZzJAZ21haWwuY29t5Luj5Y+R44CR?=
To: Rob Herring <robh@kernel.org>
Cc: tony.xie@rock-chips.com, huangtao@rock-chips.com, heiko@sntech.de,
 linux-kernel@vger.kernel.org, finley.xiao@rock-chips.com,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org, cl@rock-chips.com,
 linux-arm-kernel@lists.infradead.org
References: <20210323082410.22818-1-zhangqing@rock-chips.com>
 <20210323082410.22818-3-zhangqing@rock-chips.com>
 <1616530607.412616.1244766.nullmailer@robh.at.kernel.org>
From: "elaine.zhang" <zhangqing@rock-chips.com>
Organization: rockchip
Message-ID: <f1c36d81-9896-dec1-b6a8-f859d388ae7f@rock-chips.com>
Date: Wed, 24 Mar 2021 10:12:49 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <1616530607.412616.1244766.nullmailer@robh.at.kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210324_021327_337263_4030A96D 
X-CRM114-Status: GOOD (  20.04  )
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

SGksIFJvYiBIZXJyaW5nCgrU2iAyMDIxLzMvMjQgyc/O5zQ6MTYsIFJvYiBIZXJyaW5nINC0tcA6
Cj4gT24gVHVlLCAyMyBNYXIgMjAyMSAxNjoyNDowOSArMDgwMCwgRWxhaW5lIFpoYW5nIHdyb3Rl
Ogo+PiBUaGlzIGNvbnZlcnRzIHRoZSByb2NrY2hpcCBwb3dlciBkb21haW4gZmFtaWx5IGJpbmRp
bmdzIHRvIFlBTUwgc2NoZW1hLAo+PiBhbmQgYWRkIGJpbmRpbmcgZG9jdW1lbnRhdGlvbiBmb3Ig
dGhlIHBvd2VyIGRvbWFpbnMgZm91bmQgb24gUm9ja2NoaXAKPj4gUkszNTY4IFNvQ3MuCj4+Cj4+
IFNpZ25lZC1vZmYtYnk6IEVsYWluZSBaaGFuZyA8emhhbmdxaW5nQHJvY2stY2hpcHMuY29tPgo+
PiAtLS0KPj4gICAuLi4vYmluZGluZ3Mvc29jL3JvY2tjaGlwL3Bvd2VyX2RvbWFpbi50eHQgICAg
fCAxMzYgLS0tLS0tLS0tCj4+ICAgLi4uL3JvY2tjaGlwL3JvY2tjaGlwLHBvd2VyLWNvbnRyb2xs
ZXIueWFtbCAgIHwgMjU5ICsrKysrKysrKysrKysrKysrKwo+PiAgIDIgZmlsZXMgY2hhbmdlZCwg
MjU5IGluc2VydGlvbnMoKyksIDEzNiBkZWxldGlvbnMoLSkKPj4gICBkZWxldGUgbW9kZSAxMDA2
NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9yb2NrY2hpcC9wb3dlcl9k
b21haW4udHh0Cj4+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9zb2Mvcm9ja2NoaXAvcm9ja2NoaXAscG93ZXItY29udHJvbGxlci55YW1sCj4+
Cj4gTXkgYm90IGZvdW5kIGVycm9ycyBydW5uaW5nICdtYWtlIGR0X2JpbmRpbmdfY2hlY2snIG9u
IHlvdXIgcGF0Y2g6Cj4KPiB5YW1sbGludCB3YXJuaW5ncy9lcnJvcnM6Cj4KPiBkdHNjaGVtYS9k
dGMgd2FybmluZ3MvZXJyb3JzOgo+IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9z
b2Mvcm9ja2NoaXAvcm9ja2NoaXAscG93ZXItY29udHJvbGxlci5leGFtcGxlLmR0czoxOToxODog
ZmF0YWwgZXJyb3I6IGR0LWJpbmRpbmdzL2Nsb2NrL3JrMzU2OC1jcnUuaDogTm8gc3VjaCBmaWxl
IG9yIGRpcmVjdG9yeQo+ICAgICAxOSB8ICAgICAgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2Ns
b2NrL3JrMzU2OC1jcnUuaD4KPiAgICAgICAgfCAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4gY29tcGlsYXRpb24gdGVybWluYXRlZC4KPiBtYWtlWzFd
OiAqKiogW3NjcmlwdHMvTWFrZWZpbGUubGliOjM0OTogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3NvYy9yb2NrY2hpcC9yb2NrY2hpcCxwb3dlci1jb250cm9sbGVyLmV4YW1wbGUu
ZHQueWFtbF0gRXJyb3IgMQo+IG1ha2U6ICoqKiBbTWFrZWZpbGU6MTM4MDogZHRfYmluZGluZ19j
aGVja10gRXJyb3IgMgoKI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2Nsb2NrL3JrMzU2OC1jcnUuaD4K
VGhpcyBmaWxlIGhhcyBiZWVuIG1lcmdlZCwgY2FuIGJlIHNlZW4gb24gdGhlIE1hc3RlciBicmFu
Y2ggb2YgTGludXgtTmV4dC4KSSB3aWxsIHJlYXJyYW5nZSB0aGUgc3VibWlzc2lvbiBiYXNlZCBv
biB0aGlzOgpodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtcm9ja2No
aXAvcGF0Y2gvMjAyMTAyMjUxMDI2NDMuNjUzMDk1LTEtZW5yaWMuYmFsbGV0Ym9AY29sbGFib3Jh
LmNvbS8KCj4KPiBTZWUgaHR0cHM6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9wYXRjaC8xNDU3MDk2
Cj4KPiBUaGlzIGNoZWNrIGNhbiBmYWlsIGlmIHRoZXJlIGFyZSBhbnkgZGVwZW5kZW5jaWVzLiBU
aGUgYmFzZSBmb3IgYSBwYXRjaAo+IHNlcmllcyBpcyBnZW5lcmFsbHkgdGhlIG1vc3QgcmVjZW50
IHJjMS4KPgo+IElmIHlvdSBhbHJlYWR5IHJhbiAnbWFrZSBkdF9iaW5kaW5nX2NoZWNrJyBhbmQg
ZGlkbid0IHNlZSB0aGUgYWJvdmUKPiBlcnJvcihzKSwgdGhlbiBtYWtlIHN1cmUgJ3lhbWxsaW50
JyBpcyBpbnN0YWxsZWQgYW5kIGR0LXNjaGVtYSBpcyB1cCB0bwo+IGRhdGU6Cj4KPiBwaXAzIGlu
c3RhbGwgZHRzY2hlbWEgLS11cGdyYWRlCj4KPiBQbGVhc2UgY2hlY2sgYW5kIHJlLXN1Ym1pdC4K
Pgo+Cj4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
