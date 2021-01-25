Return-Path: <SRS0=VpfD=G4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F8EAC433E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jan 2021 01:53:47 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7D5AD207AB
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jan 2021 01:53:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7D5AD207AB
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0DtUJXQxRomp04kj69D8WHsFEcdsrxDO5PdNlHd+Jgo=; b=HgT5PwRU8EGhKdRaz04hhc3OJ
	fxEz/WMYLFsdVbAn8CjzO47rh2/EEKJx6wTfdjwdut7qD1EBU7DHTpC0qLas4QiBas3qStR2CcA1Y
	c//Lf8Mgm/Ku7bFb5CxZW1sOmCOmpRf1iTSmVsISsbX14019R3NsY+d/NTj5V/LL/TweU27IwvbWO
	sv5+BYhVV9D/aafVRqsRSoWE3YgFxVXUR4E1wNDpvLQ7FVlRVCbJHsKzSKpCElhx0vZLweBRwh5uP
	IXBCMUyWNWmsMP6w8hPDp07Qj0A/7UpzpPZHJhNO8FN9C1rft+UuDOlsfzJZbGskeGWnKtxxZtYPK
	pYCobD25w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l3r4T-0002AG-Fc; Mon, 25 Jan 2021 01:53:37 +0000
Received: from regular1.263xmail.com ([211.150.70.198])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l3r4O-00029d-J4
 for linux-rockchip@lists.infradead.org; Mon, 25 Jan 2021 01:53:35 +0000
Received: from localhost (unknown [192.168.167.235])
 by regular1.263xmail.com (Postfix) with ESMTP id 0FA626A9;
 Mon, 25 Jan 2021 09:53:21 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.31.83] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P24739T140082531448576S1611539600296563_; 
 Mon, 25 Jan 2021 09:53:20 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <dcf0c7cb0998b121b2b8409034ca4d48>
X-RL-SENDER: xxm@rock-chips.com
X-SENDER: xxm@rock-chips.com
X-LOGIN-NAME: xxm@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_v2_1/2=5d_dt-bindings=3a_rockchip=3a_Add_D?=
 =?UTF-8?B?ZXNpZ25XYXJlIGJhc2VkIFBDSWUgY29udHJvbGxlcuOAkOivt+azqOaEj++8jA==?=
 =?UTF-8?B?6YKu5Lu255Sxcm9iaGVycmluZzJAZ21haWwuY29t5Luj5Y+R44CR?=
To: Rob Herring <robh@kernel.org>, Johan Jonker <jbx6244@gmail.com>
References: <20210120101554.241029-1-xxm@rock-chips.com>
 <3af70037-c05d-1759-2bae-41db1e8e2768@gmail.com>
 <20210122155503.GA860027@robh.at.kernel.org>
From: xxm <xxm@rock-chips.com>
Message-ID: <5bde2bf9-2492-78a2-5281-c3694efa405d@rock-chips.com>
Date: Mon, 25 Jan 2021 09:53:18 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <20210122155503.GA860027@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210124_205333_126882_9679EA72 
X-CRM114-Status: GOOD (  18.86  )
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
 linux-rockchip@lists.infradead.org, Bjorn Helgaas <bhelgaas@google.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgUm9iLAoK1NogMjAyMS8xLzIyIDIzOjU1LCBSb2IgSGVycmluZyDQtLXAOgo+IE9uIFdlZCwg
SmFuIDIwLCAyMDIxIGF0IDA2OjA3OjI5UE0gKzAxMDAsIEpvaGFuIEpvbmtlciB3cm90ZToKPj4g
SGkgU2ltb24sCj4+Cj4+IFRoYW5rcyB5b3UgZm9yIHZlcnNpb24gMi4KPj4gQSBmZXcgY29tbWVu
dHMsIGhhdmUgYSBsb29rIGlmIGl0IGlzIHVzZWZ1bCBvciB0aGF0IHlvdSBkaXNhZ3JlZS4KPj4K
Pj4gVGhpcyBwYXRjaCBoYXMgbm8gY29tbWl0IG1lc3NhZ2UuIEFkZCBvbmUgaW4gdmVyc2lvbiAz
Lgo+Pgo+PiBTdWJtaXQgYWxsIHBhdGNoZXMgaW4gb25lIGJhdGNoIHdpdGggdGhlIHNhbWUgc29y
dCBtZXNzYWdlIElEIHRvIGFsbAo+PiBtYWludGFpbmVycyBpbmNsdWRpbmcgSGVpa28uCj4+Cj4+
IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4+Cj4+IEV4YW1wbGUgbWVzc2FnZSBJ
RDoKPj4gMjAyMTAxMjAxMDE1NTQuMjQxMDI5LTEteHhtQHJvY2stY2hpcHMuY29tCj4+Cj4+IC8v
Ly8vCj4+Cj4+IEluY2x1ZGVkIGlzIGEgY29weSBvZiB0aGUgUm9ja2NoaXAgcGNpZSBub2RlcyBp
biBhIHNvcnQgb2YgdGVzdC5kdHMgYmVsb3cuCj4+IENvdWxkIHlvdSBjb25maXJtIHRoYXQgdGhl
IHByb3BlcnRpZXMgaW4gdGhhdCBkdHMgYXJlIHRoZSBvbmUgdGhhdCB3ZQo+PiBjYW4gZXhwZWN0
IGZvciBMaW51eCBtYWlubGluZSBhbmQgY2FuIGJhc2Ugb3VyIFlBTUwgZG9jdW1lbnQgb24/Cj4+
Cj4+IFdpdGggcmszNTY4LWNydS5oIGFuZCByazM1NjgtcG93ZXIuaCBtYW51YWx5IGFkZGVkIHdl
IGRvIHNvbWUgdGVzdHMgd2l0aAo+PiB0aGUgZm9sbG93aW5nIGNvbW1hbmRzOgo+Pgo+PiBtYWtl
IEFSQ0g9YXJtNjQgZHRfYmluZGluZ19jaGVjawo+PiBEVF9TQ0hFTUFfRklMRVM9RG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9yb2NrY2hpcC1kdy1wY2llLnlhbWwKPj4KPj4g
bWFrZSBBUkNIPWFybTY0IGR0YnNfY2hlY2sKPj4gRFRfU0NIRU1BX0ZJTEVTPURvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcm9ja2NoaXAtZHctcGNpZS55YW1sCj4+Cj4+IG1h
a2UgQVJDSD1hcm02NCBkdGJzX2NoZWNrCj4+IERUX1NDSEVNQV9GSUxFUz1+Ly5sb2NhbC9saWIv
cHl0aG9uMy41L3NpdGUtcGFja2FnZXMvZHRzY2hlbWEvc2NoZW1hcy9wY2kvcGNpLWJ1cy55YW1s
Cj4+Cj4+IC8vLy8vCj4+Cj4+IEV4YW1wbGUgbm90aWZpY2F0aW9uczoKPj4KPj4gL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvdGVzdC5kdC55YW1sOiBwY2llQGZlMjcwMDAwOiByZWc6IFtb
MywKPj4gMzIyNTQxOTc3NiwgMCwgNDE5NDMwNF0sIFswLCA0MjYzOTY4NzY4LCAwLCA2NTUzNl1d
IGlzIHRvbyBsb25nCj4+Cj4+IC9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Rlc3QuZHQu
eWFtbDogcGNpZUBmZTI3MDAwMDogcmFuZ2VzOgo+PiAnb25lT2YnIGNvbmRpdGlvbmFsIGZhaWxl
ZCwgb25lIG11c3QgYmUgZml4ZWQ6Cj4+Cj4+IEJlZm9yZSB5b3Ugc3VibWl0IHZlcnNpb24gMyBt
YWtlIHN1cmUgdGhhdCBhbGwgd2FybmluZ3MgZ29uZSBhcyBtdWNoIGFzCj4+IHBvc3NpYmxlLgo+
Pgo+PiBPbiAxLzIwLzIxIDExOjE1IEFNLCBTaW1vbiBYdWUgd3JvdGU6Cj4+PiBTaWduZWQtb2Zm
LWJ5OiBTaW1vbiBYdWUgPHh4bUByb2NrLWNoaXBzLmNvbT4KPj4+IC0tLQo+Pj4gICAuLi4vYmlu
ZGluZ3MvcGNpL3JvY2tjaGlwLWR3LXBjaWUueWFtbCAgICAgICAgfCAxNDAgKysrKysrKysrKysr
KysrKysrCj4+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxNDAgaW5zZXJ0aW9ucygrKQo+Pj4gICBjcmVh
dGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9yb2Nr
Y2hpcC1kdy1wY2llLnlhbWwKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3BjaS9yb2NrY2hpcC1kdy1wY2llLnlhbWwgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3JvY2tjaGlwLWR3LXBjaWUueWFtbAo+Pj4gbmV3IGZp
bGUgbW9kZSAxMDA2NDQKPj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uOWQzYTU3ZjUzMDVlCj4+PiAt
LS0gL2Rldi9udWxsCj4+PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
cGNpL3JvY2tjaGlwLWR3LXBjaWUueWFtbAo+Pj4gQEAgLTAsMCArMSwxNDAgQEAKPj4+ICsjIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCBPUiBCU0QtMi1DbGF1c2UpCj4+PiArJVlB
TUwgMS4yCj4+PiArLS0tCj4+PiArJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9w
Y2kvcm9ja2NoaXAtZHctcGNpZS55YW1sIwo+Pj4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVl
Lm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIwo+Pj4gKwo+Pj4gK3RpdGxlOiBEZXNpZ25XYXJl
IGJhc2VkIFBDSWUgUkMgY29udHJvbGxlciBvbiBSb2NrY2hpcCBTb0NzCj4+PiArCj4+PiArbWFp
bnRhaW5lcnM6Cj4+PiArICAtIFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgo+
Pj4gKyAgLSBTaW1vbiBYdWUgPHh4bUByb2NrLWNoaXBzLmNvbT4KPj4gICAgICAgLSBIZWlrbyBT
dHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPiA7KQo+Pj4gKwo+Pj4gK2Rlc2NyaXB0aW9uOiB8Kwo+
Pj4gKyAgUkszNTY4IFNvQyBQQ0llIGhvc3QgY29udHJvbGxlciBpcyBiYXNlZCBvbiB0aGUgU3lu
b3BzeXMgRGVzaWduV2FyZQo+Pj4gKyAgUENJZSBJUCBhbmQgdGh1cyBpbmhlcml0cyBhbGwgdGhl
IGNvbW1vbiBwcm9wZXJ0aWVzIGRlZmluZWQgaW4KPj4+ICsgIGRlc2lnbndhcmUtcGNpZS50eHQu
Cj4+PiArCj4+PiArYWxsT2Y6Cj4+PiArICAtICRyZWY6IC9zY2hlbWFzL3BjaS9wY2ktYnVzLnlh
bWwjCj4+PiArCj4+PiArIyBXZSBuZWVkIGEgc2VsZWN0IGhlcmUgc28gd2UgZG9uJ3QgbWF0Y2gg
YWxsIG5vZGVzIHdpdGggJ3NucHMsZHctcGNpZScKPj4+ICtzZWxlY3Q6Cj4+PiArICBwcm9wZXJ0
aWVzOgo+Pj4gKyAgICBjb21wYXRpYmxlOgo+Pj4gKyAgICAgIGNvbnRhaW5zOgo+Pj4gKyAgICAg
ICAgY29uc3Q6IHJvY2tjaGlwLHJrMzU2OC1wY2llCj4+PiArICByZXF1aXJlZDoKPj4+ICsgICAg
LSBjb21wYXRpYmxlCj4+PiArCj4+PiArcHJvcGVydGllczoKPj4+ICsgIGNvbXBhdGlibGU6Cj4+
PiArICAgIGl0ZW06Cj4+ICAgICAgaXRlbXM6Cj4+Cj4+PiArICAgICAgLSBjb25zdDogcm9ja2No
aXAscmszNTY4LXBjaWUKPj4+ICsgICAgICAtIGNvbnN0OiBzbnBzLGR3LXBjaWUKPj4gQWRkIGVt
cHR5IGxpbmUKPj4KPj4+ICsgIHJlZzogICAgaXRlbXM6Cj4+ICAgICAgICAtIGRlc2NyaXB0aW9u
Ogo+PiAgICAgICAgLSBkZXNjcmlwdGlvbjoKPj4KPj4gQWRkIHNvbWUgZGVzY3JpcHRpb24gZm9y
IHJlZ3MuCj4+Cj4+PiArICAgIG1heEl0ZW1zOiAxCj4+IHJlbW92ZQo+Pgo+PiBUaGlzIHJlZyBt
YXhJdGVtcyBnaXZlcyBlcnJvcnMuCj4+Cj4+PiArCj4+PiArICBpbnRlcnJ1cHQ6Cj4+IGludGVy
cnVwdHM6Cj4+ICAgICBpdGVtczoKPj4KPj4+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBzeXN0ZW0g
aW5mb3JtYXRpb24KPj4+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBwb3dlciBtYW5hZ2VtZW50IGNv
bnRyb2wKPj4+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBQQ0llIG1lc3NhZ2UKPj4+ICsgICAgICAt
IGRlc2NyaXB0aW9uOiBsZWdhY3kgaW50ZXJydXB0Cj4+PiArICAgICAgLSBkZXNjcmlwdGlvbjog
ZXJyb3IgcmVwb3J0Cj4+PiArCj4+PiArICBpbnRlcnJ1cHQtbmFtZXM6Cj4+PiArICAgIGl0ZW1z
Ogo+Pj4gKyAgICAgIC0gY29uc3Q6IHN5cwo+Pj4gKyAgICAgIC0gY29uc3Q6IHBtYwo+Pj4gKyAg
ICAgIC0gY29uc3Q6IG1zZwo+IE1TST8gSWYgc28sIHVzZSAnbXNpJy4gVGhlIERXQyBjb3JlIHdp
bGwgaGFuZGxlIHNldHRpbmcgaXQgdXAgbm93LgoKTm8sIGl0IGlzIFNvQyBkZXNpZ25lZCBpbnRl
cnJ1cHQgZm9yIHNvbWUgcHVycG9zZS4gQ3VycmVudGx5LCB3ZSBkb24ndCAKdXNlIGludGVycnVw
dCwgd2lsbCByZW1vdmUKCnRoZXNlLgoKPj4+ICsgICAgICAtIGNvbnN0OiBsZWdhY3kKPj4+ICsg
ICAgICAtIGNvbnN0OiBlcnIKPj4+ICsKPj4+ICsgIGNsb2NrczoKPj4+ICsgICAgaXRlbXM6Cj4+
PiArICAgICAgLSBkZXNjcmlwdGlvbjogQUhCIGNsb2NrIGZvciBQQ0llIG1hc3Rlcgo+Pj4gKyAg
ICAgIC0gZGVzY3JpcHRpb246IEFIQiBjbG9jayBmb3IgUENJZSBzbGF2ZQo+Pj4gKyAgICAgIC0g
ZGVzY3JpcHRpb246IEFIQiBjbG9jayBmb3IgUENJZSBkYmkKPj4+ICsgICAgICAtIGRlc2NyaXB0
aW9uOiBBUEIgY2xvY2sgZm9yIFBDSWUKPj4+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBBdXhpbGlh
cnkgY2xvY2sgZm9yIFBDSWUKPj4+ICsKPj4+ICsgIGNsb2NrLW5hbWVzOgo+Pj4gKyAgICBpdGVt
czoKPj4+ICsgICAgICAtIGNvbnN0OiBhY2xrX21zdAo+Pj4gKyAgICAgIC0gY29uc3Q6IGFjbGtf
c2x2Cj4+PiArICAgICAgLSBjb25zdDogYWNsa19kYmkKPj4+ICsgICAgICAtIGNvbnN0OiBwY2xr
Cj4+PiArICAgICAgLSBjb25zdDogYXV4Cj4+PiArCj4+PiArICBtc2ktbWFwOiB0cnVlCj4+PiAr
Cj4+PiArICBwb3dlci1kb21haW5zOgo+Pj4gKyAgICBtYXhJdGVtczogMQo+PiAvLy8vLwo+PiBU
aGVzZSBwcm9wZXJ0aWVzIGNvbWUgZnJvbSBkZXNpZ253YXJlLXBjaWUudHh0Cj4+IE1heWJlIGFk
ZCB0aGVtIGhlcmUgZm9yIG5vdyB0aWxsIHRoZXJlJ3MgYSBjb21tb24geWFtbD8KPj4KPj4gICAg
bnVtLWliLXdpbmRvd3M6IG51bWJlciBvZiBpbmJvdW5kIGFkZHJlc3MgdHJhbnNsYXRpb24gd2lu
ZG93cwo+PiAgICBudW0tb2Itd2luZG93czogbnVtYmVyIG9mIG91dGJvdW5kIGFkZHJlc3MgdHJh
bnNsYXRpb24gd2luZG93cwo+IFRoZXNlIGNhbiBiZSBhbmQgYXJlIG5vdyBkZXRlY3RlZCBhdCBy
dW50aW1lLgoKV2lsbCByZW1vdmUuCgpTaW1vbiBYdWUKCj4KPiBSb2IKPgo+Cj4KCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
