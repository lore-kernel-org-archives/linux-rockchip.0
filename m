Return-Path: <SRS0=q9XV=GX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DBD1C433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 14:16:49 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 558D7207D2
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 14:16:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 558D7207D2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4uzZsVHR1fjfGNkSKAxqugmeeIDr2heNqvz+ujwkFVI=; b=wSyGc1VIk9z6KBx4rm3QxVbWy
	NXXFIFH289l2S+fDWQifRBVFawfmKtnIOvs/bc/W+x0j22eIlmBdLIe+ookT6n2PwXRun5mLRt1jy
	NOwdYTYNtCJjxyQfw4LZ3XKatR8szXFGX99ZFzKiqjKYbpBxBIsS+QvDA4FDJjVls+t/ys0LZHwrD
	TsQN8ae13Hi4r+re/GETeDrTJ53hz2FyTNSn+92pOD3REMpxZ28Ho9yLXAq+5txZqjquWx/xHjya2
	0/8AtNjc9cdOOYnhgQQ0bPB6xyzNsMsHLkRhHLr0HUzOh90W8tOnu7TfheSgWNNtZaqcsxiDOTGt2
	9ai6gVJgA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2EHs-00013v-0F; Wed, 20 Jan 2021 14:16:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2EHp-00013G-0X
 for linux-rockchip@lists.infradead.org; Wed, 20 Jan 2021 14:16:42 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id A77A9207BC
 for <linux-rockchip@lists.infradead.org>; Wed, 20 Jan 2021 14:16:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611152199;
 bh=ndpmiwAKrdUHGxid8tW9786YKK4wnnB3+ULujE6LZqM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=aw7cxs2/W5iQIXb6zRfe0WoRx2MO7N4znF6wH8hzk2gn4OTYXfjD96S0ZTb2mhLR3
 NeyS+9bngM6pg8RMsB8mBuF0YU9L+xAjpq3n2bnYPncsMipBEuWLiASDD/0IFYjweC
 fkYnyeVVRn4Ynu13ofjuWAyQ4pgdpyJkkk/tjEyLiMAQhCSGwFuQgei04KsFqz+BSC
 GcodSsZLh+KNjxA7RwUWuXcrLZPgfqXh08oH8slN8hWvMIPneC3YEsf5AVQKRCoCSE
 gLw5W1YGmZjKDNpwIPzlhPtR+Q7zWxbzJ1gZakGRoCLuLz+XZWAxHFKyR+F8ynMvaj
 41O3urN2bl20g==
Received: by mail-ed1-f43.google.com with SMTP id bx12so11929311edb.8
 for <linux-rockchip@lists.infradead.org>; Wed, 20 Jan 2021 06:16:39 -0800 (PST)
X-Gm-Message-State: AOAM530jlOrcbwlPkIMld0W6vAH9p2WyuxQf9gWLssIa7uvXyPQAfazP
 yc0HpOcWza59u5qWZrgj2RNsXRy9JB5ER95vMA==
X-Google-Smtp-Source: ABdhPJwSt06b9pOrIcgBBFL8fiaiPdePUCBH58SZ+9qnWmdaJJtjskAp3/8ErXHotmxAPn1+2+9tRrR5CxpbVTz1eRE=
X-Received: by 2002:a50:e78b:: with SMTP id b11mr7486457edn.165.1611152198216; 
 Wed, 20 Jan 2021 06:16:38 -0800 (PST)
MIME-Version: 1.0
References: <20210118091739.247040-1-xxm@rock-chips.com>
 <20210118091739.247040-2-xxm@rock-chips.com>
 <e143ad9e-1cfd-e59d-0079-513c036981ba@gmail.com> <2336601.uoxibFcf9D@diego>
 <677c102d-0b9b-1a12-0ac6-4dd0a1023b68@gmail.com>
 <c9ff67c7-ca1d-d4a6-aef5-4c75688ed6d3@arm.com>
In-Reply-To: <c9ff67c7-ca1d-d4a6-aef5-4c75688ed6d3@arm.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 20 Jan 2021 08:16:25 -0600
X-Gmail-Original-Message-ID: <CAL_JsqK=roMm7vb=WAcLUsiru5qwFg=Sc_po1gD8oJu=JipZbg@mail.gmail.com>
Message-ID: <CAL_JsqK=roMm7vb=WAcLUsiru5qwFg=Sc_po1gD8oJu=JipZbg@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: rockchip: Add DesignWare based PCIe
 controller
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210120_091641_193019_5E368FE3 
X-CRM114-Status: GOOD (  26.86  )
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
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 PCI <linux-pci@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Johan Jonker <jbx6244@gmail.com>,
 Simon Xue <xxm@rock-chips.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBKYW4gMTksIDIwMjEgYXQgMTI6NDAgUE0gUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJw
aHlAYXJtLmNvbT4gd3JvdGU6Cj4KPiBPbiAyMDIxLTAxLTE5IDE1OjExLCBKb2hhbiBKb25rZXIg
d3JvdGU6Cj4gPiBIaSBTaW1vbiwgSGVpa28sCj4gPgo+ID4gT24gMS8xOS8yMSAyOjE0IFBNLCBI
ZWlrbyBTdMO8Ym5lciB3cm90ZToKPiA+PiBIaSBKb2hhbiwKPiA+Pgo+ID4+IEFtIERpZW5zdGFn
LCAxOS4gSmFudWFyIDIwMjEsIDE0OjA3OjQxIENFVCBzY2hyaWViIEpvaGFuIEpvbmtlcjoKPiA+
Pj4gSGkgU2ltb24sCj4gPj4+Cj4gPj4+IFRoYW5rIHlvdSBmb3IgdGhpcyBwYXRjaCBmb3Igcmsz
NTY4IHBjaWUuCj4gPj4+Cj4gPj4+IEluY2x1ZGUgdGhlIFJvY2tjaGlwIGRldmljZSB0cmVlIG1h
aW50YWluZXIgYW5kIGFsbCBvdGhlciBwZW9wbGUvbGlzdHMKPiA+Pj4gdG8gdGhlIENDIGxpc3Qu
Cj4gPj4+Cj4gPj4+IC4vc2NyaXB0cy9jaGVja3BhdGNoLnBsIC0tc3RyaWN0IDxwYXRjaDE+IDxw
YXRjaDI+Cj4gPj4+Cj4gPj4+ICAgLi9zY3JpcHRzL2dldF9tYWludGFpbmVyLnBsIC0tbm9yb2xl
cyAtLW5vcm9sZXN0YXRzIC0tbm9naXQtZmFsbGJhY2sKPiA+Pj4gLS1ub2dpdCA8cGF0Y2gxPiA8
cGF0Y2gyPgo+ID4+Pgo+ID4+PiBnaXQgc2VuZC1lbWFpbCAtLXN1cHByZXNzLWNjIGFsbCAtLWRy
eS1ydW4gLS1hbm5vdGF0ZSAtLXRvCj4gPj4+IGhlaWtvQHNudGVjaC5kZSAtLWNjIDwuLj4gPHBh
dGNoMT4gPHBhdGNoMj4KPiA+Pj4KPiA+Pj4gVGhpcyBTb0MgaGFzIG5vIHN1cHBvcnQgaW4gbWFp
bmxpbmUgbGludXgga2VybmVsIHlldC4KPiA+Pj4gSW4gYWxsIHRoZSBmb2xsb3dpbmcgeWFtbCBk
b2N1bWVudHMgZm9yIHJrMzU2OCB3ZSBuZWVkIGhlYWRlcnMgd2l0aAo+ID4+PiBkZWZpbmVzIGZv
ciBjbG9ja3MgYW5kIHBvd2VyIGRvbWFpbnMsIGV0Yy4KPiA+Pj4KPiA+Pj4gRm9yIGV4YW1wbGU6
Cj4gPj4+ICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9jbG9jay9yazM1NjgtY3J1Lmg+Cj4gPj4+ICNp
bmNsdWRlIDxkdC1iaW5kaW5ncy9wb3dlci9yazM1NjgtcG93ZXIuaD4KPiA+Pj4KPiA+Pj4gQ291
bGQgUm9ja2NoaXAgc3VibWl0IGZpcnN0IGNsb2NrcyBhbmQgcG93ZXIgZHJpdmVycyBlbnRyaWVz
IGFuZCBhIGJhc2ljCj4gPj4+IHJrMzU2OC5kdHNpICsgZXZiIGR0cz8KPiA+Pj4gSW5jbHVkZSBh
IHBhdGNoIHRvIHRoaXMgc2VyaWUgd2l0aCAzIHBjaWUgbm9kZXMgYWRkZWQgdG8gcmszNTY4LmR0
c2kuCj4gPj4+Cj4gPj4+IEEgZHRic19jaGVjayBvbmx5IHdvcmtzIHdpdGggYSBjb21wbGV0ZSBk
dHNpIGFuZCBldmIgZHRzLgo+ID4+Pgo+ID4+PiBtYWtlIEFSQ0g9YXJtNjQgZHRic19jaGVjawo+
ID4+PiBEVF9TQ0hFTUFfRklMRVM9RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bj
aS9yb2NrY2hpcC1kdy1wY2llLnlhbWwKPiA+Pj4KPiA+Pj4gT24gMS8xOC8yMSAxMDoxNyBBTSwg
U2ltb24gWHVlIHdyb3RlOgo+ID4+Pj4gU2lnbmVkLW9mZi1ieTogU2ltb24gWHVlIDx4eG1Acm9j
ay1jaGlwcy5jb20+Cj4gPj4+PiAtLS0KPiA+Pj4+ICAgLi4uL2JpbmRpbmdzL3BjaS9yb2NrY2hp
cC1kdy1wY2llLnlhbWwgICAgICAgIHwgMTAxICsrKysrKysrKysrKysrKysrKwo+ID4+Pj4gICAx
IGZpbGUgY2hhbmdlZCwgMTAxIGluc2VydGlvbnMoKykKPiA+Pj4+ICAgY3JlYXRlIG1vZGUgMTAw
NjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcm9ja2NoaXAtZHctcGNp
ZS55YW1sCj4gPj4+Pgo+ID4+Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9wY2kvcm9ja2NoaXAtZHctcGNpZS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3BjaS9yb2NrY2hpcC1kdy1wY2llLnlhbWwKPiA+Pj4+IG5ldyBmaWxl
IG1vZGUgMTAwNjQ0Cj4gPj4+PiBpbmRleCAwMDAwMDAwMDAwMDAuLmZhNjY0Y2ZmZmIyOQo+ID4+
Pj4gLS0tIC9kZXYvbnVsbAo+ID4+Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3BjaS9yb2NrY2hpcC1kdy1wY2llLnlhbWwKPiA+Pj4+IEBAIC0wLDAgKzEsMTAxIEBA
Cj4gPj4+PiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAgT1IgQlNELTItQ2xh
dXNlKQo+ID4+Pj4gKyVZQU1MIDEuMgo+ID4+Pj4gKy0tLQo+ID4+Pj4gKyRpZDogaHR0cDovL2Rl
dmljZXRyZWUub3JnL3NjaGVtYXMvcGNpL3JvY2tjaGlwLWR3LXBjaWUueWFtbCMKPiA+Pj4+ICsk
c2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKPiA+
Pj4+ICsKPiA+Pj4+ICt0aXRsZTogRGVzaWduV2FyZSBiYXNlZCBQQ0llIFJDIGNvbnRyb2xsZXIg
b24gUm9ja2NoaXAgU29Dcwo+ID4+Pj4gKwo+ID4+Pgo+ID4+Pj4gK21haW50YWluZXJzOgo+ID4+
Pj4gKyAgLSBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KPiA+Pj4+ICsgIC0g
U2ltb24gWHVlIDx4eG1Acm9jay1jaGlwcy5jb20+Cj4gPj4+Cj4gPj4+IG1haW50YWluZXJzOgo+
ID4+PiAgICAtIEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4gPj4+Cj4gPj4+IEFk
ZCBvbmx5IHBlb3BsZSB3aXRoIG1haW50YWluZXIgcmlnaHRzLgo+ID4+Cj4gPj4gSSdkIGRpc2Fn
cmVlIG9uIHRoaXMgOy0pCj4gPgo+ID4gQWxsIHJvYWRzIGxlYWRzIHRvIEhlaWtvLi4uIDspCj4g
Pgo+ID4gSXQgdGFrZXMgbG9uZyB0ZXJtIGNvbW1pdG1lbnQuCj4gPiBZZWFyIGluLCB5ZWFyIG91
dC4KPiA+IEtlZXBpbmcgeW91cnNlbGYgdXAgdG8gZGF0ZSB3aXRoIHRoZSBsYXRlc3QgcGNlaSBk
ZXZlbG9wbWVudC4KPiA+IENvbW11bmljYXRlIGluIEVuZ2xpc2guCj4gPiBCZSBhYmxlIHRvIHN1
Ym1pdCBwYXRjaGVzIHdpdGhvdXQgZXJyb3JzLi4uIDspCj4gPiBSZXZpZXcgb3RoZXIgcGVvcGxl
cyBwYXRjaGVzLgo+ID4gUmVzcG9uZCBpbiBzaG9ydCB0aW1lLgo+ID4gQnVnIGZpeGluZy4KPgo+
IENyaWtleSwgaXQncyBvbmx5IGEgRFQgYmluZGluZy4uLiA6Lwo+Cj4gPiBJZiB0aGF0J3Mgd2hh
dCB5b3UgcmVhbGx5IHdhbnQsIHRoZW4geW91IG11c3QgaW5jbHVkZSBhIHBhdGNoIHRvIHRoaXMK
PiA+IHNlcmllIGZvciBNQUlOVEFJTkVSUy4KPgo+IEkgdGhpbmsgaWYgQmpvcm4gYW5kIExvcmVu
em8gd2FudCBhIHNwZWNpZmljYWxseSBuYW1lZCBzdWItbWFpbnRhaW5lcgo+IGZvciB0aGUgZHJp
dmVyIGl0c2VsZiwgd2UgY2FuIGxldCB0aGVtIHNheSBzbyByYXRoZXIgdGhhbiBwcmVzdW1lLgoK
Rm9yIHRoZSBiaW5kaW5nIGl0J3MgbXkgY2FsbC4gOikKClRoaXMgc2hvdWxkIGJlIHNvbWVvbmUg
d2hvIGNhcmVzIGFuZCBrbm93cyB0aGUgaC93LiBJT1csIGlmIEkgd2FudCB0bwpkZWxldGUgdGhl
IGJpbmRpbmcsIHNvbWVvbmUgd2hvIHdpbGwgb2JqZWN0LgoKT2YgY291cnNlLCBJJ2QgbGlrZSB0
aGF0IHNvbWVvbmUgdG8gaGF2ZSBhbGwgdGhlIGFib3ZlIHF1YWxpdGllcyB0b28uCgpSb2IKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
