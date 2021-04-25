Return-Path: <SRS0=ZyAL=JW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DFF5C433ED
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Apr 2021 09:17:32 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CEFC161103
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Apr 2021 09:17:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CEFC161103
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Cc:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eU7P7xqiYJ1ZJk+ic7MYKc2K9369ozSYbRwyAyKT2V0=; b=SUW+MvyijXF8GUYWxJcKSRNTN
	tIDdPqTzyecm+gW8YWV5JLl1zvM8YcfMkCYt/0S6znkIwEH9/6jNf4ix0ml1hma8gIm7zgVEhP5HC
	cmpHZ3I0zNIXkI0CjmQHbER6uhAaf85BH2mHmueX/1Zg5t1rK+M0fMRKtNLwcIph4pF6WAtKwncSH
	bV9uFvmK/tNKBT39GVScRPQXgm2PjNMuuej0aU2F0r94hFzmCDfUpUNGb3iHU3f07DlLREekx6wif
	Q2VN1cD2vqmaBqsGu/cuChyW2hKm2ixh3+CBWjcL2eGI5zFbHS9bnwlSLLNHh3z2hvUV7vPGdgUvz
	uzdTJ0+ag==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1laatL-005Lck-KP; Sun, 25 Apr 2021 09:17:27 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laat0-005Lb9-ML; Sun, 25 Apr 2021 09:17:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Cc:Sender:Reply-To:Content-ID:Content-Description;
 bh=l6wgQpecPOzTPpzZ89Db0SqokD0eMggHQNj5L1FVfqQ=; b=jhzAkCzlwsgsHT7tWPyjyY3EaD
 UUui4KK06WF8gh1d3NhmaLlNa9GvtLuQv19u3PdYq84O79gTlaZycHs/nmFPxXnNe4skT0fN2V6BN
 OXYKzivN242RkqkLpHRGopE+QydT6FURFrFVMdfO+ZLKcOttQhkO/HrUa/OxR4qNBWAfOiAtLmhaf
 zdeNvtjQ6ZG8T46PBZq7H9ZAWenvK/OZwXmJSqvfb5oSJ8j1YS93hqo1UyqcOol7RUaANCmv/gPro
 95FhXLJo1BjnQtJhZNFzIVezHwdCRHZGUc+uaUZOikUB6zZ4VmFEvo+EbvHMgg5+mewmXlzXZFyeB
 pk8vWleg==;
Received: from regular1.263xmail.com ([211.150.70.199])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laasw-00FNFT-JE; Sun, 25 Apr 2021 09:17:04 +0000
Received: from localhost (unknown [192.168.167.70])
 by regular1.263xmail.com (Postfix) with ESMTP id 0E2FB1175;
 Sun, 25 Apr 2021 17:16:54 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.151] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P26234T140422479345408S1619342210060169_; 
 Sun, 25 Apr 2021 17:16:51 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <1eed35af59979b8940d3107cc52244b9>
X-RL-SENDER: cl@rock-chips.com
X-SENDER: cl@rock-chips.com
X-LOGIN-NAME: cl@rock-chips.com
X-FST-TO: huangtao@rock-chips.com
X-RCPT-COUNT: 26
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Cc: cl@rock-chips.com, heiko@sntech.de, robh+dt@kernel.org,
 jagan@amarulasolutions.com, wens@csie.org, uwe@kleine-koenig.org,
 mail@david-bauer.net, jbx6244@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, jensenhuang@friendlyarm.com,
 michael@amarulasolutions.com, cnsztl@gmail.com, devicetree@vger.kernel.org,
 ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-serial@vger.kernel.org,
 linux-i2c@vger.kernel.org, jay.xu@rock-chips.com, shawn.lin@rock-chips.com,
 david.wu@rock-chips.com, zhangqing@rock-chips.com, huangtao@rock-chips.com
Subject: Re: [PATCH v1 4/5] arm64: dts: rockchip: add core dtsi for RK3568 SoC
To: Marc Zyngier <maz@kernel.org>
References: <20210421065921.23917-1-cl@rock-chips.com>
 <20210421065921.23917-5-cl@rock-chips.com> <87zgxrpxo5.wl-maz@kernel.org>
From: =?UTF-8?B?6ZmI5Lqu?= <cl@rock-chips.com>
Message-ID: <ec556a6c-e950-d152-c878-986e2616ddcd@rock-chips.com>
Date: Sun, 25 Apr 2021 17:16:50 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <87zgxrpxo5.wl-maz@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210425_021703_001869_D16C05B1 
X-CRM114-Status: GOOD (  21.52  )
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

SGkgTWFyY++8jAoKIMKgwqDCoCBUaGFua3MgZm9yIHJlcGx5LgoKIMKgwqDCoCBTZWUgYmVsb3cu
CgrlnKggMjAyMS80LzIxIOS4i+WNiDk6MzYsIE1hcmMgWnluZ2llciDlhpnpgZM6Cj4gT24gV2Vk
LCAyMSBBcHIgMjAyMSAwNzo1OToyMCArMDEwMCwKPiA8Y2xAcm9jay1jaGlwcy5jb20+IHdyb3Rl
Ogo+PiBGcm9tOiBMaWFuZyBDaGVuIDxjbEByb2NrLWNoaXBzLmNvbT4KPj4KPj4gUkszNTY4IGlz
IGEgaGlnaC1wZXJmb3JtYW5jZSBhbmQgbG93IHBvd2VyIHF1YWQtY29yZSBhcHBsaWNhdGlvbiBw
cm9jZXNzb3IKPj4gZGVzaWduZWQgZm9yIHBlcnNvbmFsIG1vYmlsZSBpbnRlcm5ldCBkZXZpY2Ug
YW5kIEFJb1QgZXF1aXBtZW50cy4KPj4KPj4gVGhpcyBwYXRjaCBhZGQgYmFzaWMgY29yZSBkdHNp
IGZpbGUgZm9yIGl0Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBMaWFuZyBDaGVuIDxjbEByb2NrLWNo
aXBzLmNvbT4KPj4gLS0tCj4+ICAgLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1waW5jdHJs
LmR0c2kgICAgIHwgMjc4OSArKysrKysrKysrKysrKysrKwo+PiAgIGFyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTY4LmR0c2kgICAgICB8ICA3OTUgKysrKysKPj4gICAuLi4vYm9vdC9k
dHMvcm9ja2NoaXAvcm9ja2NoaXAtcGluY29uZi5kdHNpICAgfCAgMzQ2ICsrCj4+ICAgMyBmaWxl
cyBjaGFuZ2VkLCAzOTMwIGluc2VydGlvbnMoKykKPj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtcGluY3RybC5kdHNpCj4+ICAgY3JlYXRl
IG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LmR0c2kKPj4g
ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yb2NrY2hp
cC1waW5jb25mLmR0c2kKPj4KPiBbLi4uXQo+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU2OC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1NjguZHRzaQo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+PiBpbmRleCAwMDAwMDAwMDAw
MDAuLmFjOGRiMmY1NGYyYgo+PiAtLS0gL2Rldi9udWxsCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTY4LmR0c2kKPj4gQEAgLTAsMCArMSw3OTUgQEAKPj4gKy8vIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsgT1IgTUlUKQo+PiArLyoKPj4gKyAqIENv
cHlyaWdodCAoYykgMjAyMSBSb2NrY2hpcCBFbGVjdHJvbmljcyBDby4sIEx0ZC4KPj4gKyAqLwo+
PiArCj4+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3MvY2xvY2svcmszNTY4LWNydS5oPgo+PiArI2lu
Y2x1ZGUgPGR0LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2FybS1naWMuaD4KPj4gKyNp
bmNsdWRlIDxkdC1iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9pcnEuaD4KPj4gKyNpbmNs
dWRlIDxkdC1iaW5kaW5ncy9waW5jdHJsL3JvY2tjaGlwLmg+Cj4+ICsjaW5jbHVkZSA8ZHQtYmlu
ZGluZ3Mvc29jL3JvY2tjaGlwLGJvb3QtbW9kZS5oPgo+PiArI2luY2x1ZGUgPGR0LWJpbmRpbmdz
L3BoeS9waHkuaD4KPj4gKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy90aGVybWFsL3RoZXJtYWwuaD4K
Pj4gKwo+PiArLyB7Cj4+ICsJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1NjgiOwo+PiArCj4+
ICsJaW50ZXJydXB0LXBhcmVudCA9IDwmZ2ljPjsKPj4gKwkjYWRkcmVzcy1jZWxscyA9IDwyPjsK
Pj4gKwkjc2l6ZS1jZWxscyA9IDwyPjsKPj4gKwo+PiArCWFsaWFzZXMgewo+PiArCQlzZXJpYWwy
ID0gJnVhcnQyOwo+PiArCX07Cj4+ICsKPj4gKwljcHVzIHsKPj4gKwkJI2FkZHJlc3MtY2VsbHMg
PSA8Mj47Cj4+ICsJCSNzaXplLWNlbGxzID0gPDA+Owo+PiArCj4+ICsJCWNwdTA6IGNwdUAwIHsK
Pj4gKwkJCWRldmljZV90eXBlID0gImNwdSI7Cj4+ICsJCQljb21wYXRpYmxlID0gImFybSxjb3J0
ZXgtYTU1IjsKPj4gKwkJCXJlZyA9IDwweDAgMHgwPjsKPj4gKwkJCWVuYWJsZS1tZXRob2QgPSAi
cHNjaSI7Cj4+ICsJCQljbG9ja3MgPSA8JnNjbWlfY2xrIDA+Owo+PiArCQkJb3BlcmF0aW5nLXBv
aW50cy12MiA9IDwmY3B1MF9vcHBfdGFibGU+Owo+PiArCQkJI2Nvb2xpbmctY2VsbHMgPSA8Mj47
Cj4+ICsJCX07Cj4+ICsJCWNwdTE6IGNwdUAxMDAgewo+PiArCQkJZGV2aWNlX3R5cGUgPSAiY3B1
IjsKPj4gKwkJCWNvbXBhdGlibGUgPSAiYXJtLGNvcnRleC1hNTUiOwo+PiArCQkJcmVnID0gPDB4
MCAweDEwMD47Cj4+ICsJCQllbmFibGUtbWV0aG9kID0gInBzY2kiOwo+PiArCQkJb3BlcmF0aW5n
LXBvaW50cy12MiA9IDwmY3B1MF9vcHBfdGFibGU+Owo+PiArCQl9Owo+PiArCQljcHUyOiBjcHVA
MjAwIHsKPj4gKwkJCWRldmljZV90eXBlID0gImNwdSI7Cj4+ICsJCQljb21wYXRpYmxlID0gImFy
bSxjb3J0ZXgtYTU1IjsKPj4gKwkJCXJlZyA9IDwweDAgMHgyMDA+Owo+PiArCQkJZW5hYmxlLW1l
dGhvZCA9ICJwc2NpIjsKPj4gKwkJCW9wZXJhdGluZy1wb2ludHMtdjIgPSA8JmNwdTBfb3BwX3Rh
YmxlPjsKPj4gKwkJfTsKPj4gKwkJY3B1MzogY3B1QDMwMCB7Cj4+ICsJCQlkZXZpY2VfdHlwZSA9
ICJjcHUiOwo+PiArCQkJY29tcGF0aWJsZSA9ICJhcm0sY29ydGV4LWE1NSI7Cj4+ICsJCQlyZWcg
PSA8MHgwIDB4MzAwPjsKPj4gKwkJCWVuYWJsZS1tZXRob2QgPSAicHNjaSI7Cj4+ICsJCQlvcGVy
YXRpbmctcG9pbnRzLXYyID0gPCZjcHUwX29wcF90YWJsZT47Cj4+ICsJCX07Cj4+ICsJfTsKPj4g
Kwo+PiArCWNwdTBfb3BwX3RhYmxlOiBjcHUwLW9wcC10YWJsZSB7Cj4+ICsJCWNvbXBhdGlibGUg
PSAib3BlcmF0aW5nLXBvaW50cy12MiI7Cj4+ICsJCW9wcC1zaGFyZWQ7Cj4+ICsKPj4gKwkJb3Bw
LTQwODAwMDAwMCB7Cj4+ICsJCQlvcHAtaHogPSAvYml0cy8gNjQgPDQwODAwMDAwMD47Cj4+ICsJ
CQlvcHAtbWljcm92b2x0ID0gPDgyNTAwMCA4MjUwMDAgMTE1MDAwMD47Cj4+ICsJCQljbG9jay1s
YXRlbmN5LW5zID0gPDQwMDAwPjsKPj4gKwkJfTsKPj4gKwkJb3BwLTYwMDAwMDAwMCB7Cj4+ICsJ
CQlvcHAtaHogPSAvYml0cy8gNjQgPDYwMDAwMDAwMD47Cj4+ICsJCQlvcHAtbWljcm92b2x0ID0g
PDgyNTAwMCA4MjUwMDAgMTE1MDAwMD47Cj4+ICsJCX07Cj4+ICsJCW9wcC04MTYwMDAwMDAgewo+
PiArCQkJb3BwLWh6ID0gL2JpdHMvIDY0IDw4MTYwMDAwMDA+Owo+PiArCQkJb3BwLW1pY3Jvdm9s
dCA9IDw4MjUwMDAgODI1MDAwIDExNTAwMDA+Owo+PiArCQkJb3BwLXN1c3BlbmQ7Cj4+ICsJCX07
Cj4+ICsJCW9wcC0xMTA0MDAwMDAwIHsKPj4gKwkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8MTEwNDAw
MDAwMD47Cj4+ICsJCQlvcHAtbWljcm92b2x0ID0gPDgyNTAwMCA4MjUwMDAgMTE1MDAwMD47Cj4+
ICsJCX07Cj4+ICsJCW9wcC0xNDE2MDAwMDAwIHsKPj4gKwkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8
MTQxNjAwMDAwMD47Cj4+ICsJCQlvcHAtbWljcm92b2x0ID0gPDkwMDAwMCA5MDAwMDAgMTE1MDAw
MD47Cj4+ICsJCX07Cj4+ICsJCW9wcC0xNjA4MDAwMDAwIHsKPj4gKwkJCW9wcC1oeiA9IC9iaXRz
LyA2NCA8MTYwODAwMDAwMD47Cj4+ICsJCQlvcHAtbWljcm92b2x0ID0gPDk3NTAwMCA5NzUwMDAg
MTE1MDAwMD47Cj4+ICsJCX07Cj4+ICsJCW9wcC0xODAwMDAwMDAwIHsKPj4gKwkJCW9wcC1oeiA9
IC9iaXRzLyA2NCA8MTgwMDAwMDAwMD47Cj4+ICsJCQlvcHAtbWljcm92b2x0ID0gPDEwNTAwMDAg
MTA1MDAwMCAxMTUwMDAwPjsKPj4gKwkJfTsKPj4gKwkJb3BwLTE5OTIwMDAwMDAgewo+PiArCQkJ
b3BwLWh6ID0gL2JpdHMvIDY0IDwxOTkyMDAwMDAwPjsKPj4gKwkJCW9wcC1taWNyb3ZvbHQgPSA8
MTE1MDAwMCAxMTUwMDAwIDExNTAwMDA+Owo+PiArCQl9Owo+PiArCX07Cj4+ICsKPj4gKwlhcm0t
cG11IHsKPj4gKwkJY29tcGF0aWJsZSA9ICJhcm0sY29ydGV4LWE1NS1wbXUiLCAiYXJtLGFybXY4
LXBtdXYzIjsKPj4gKwkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDIyOCBJUlFfVFlQRV9MRVZFTF9I
SUdIPiwKPj4gKwkJCSAgICAgPEdJQ19TUEkgMjI5IElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+PiAr
CQkJICAgICA8R0lDX1NQSSAyMzAgSVJRX1RZUEVfTEVWRUxfSElHSD4sCj4+ICsJCQkgICAgIDxH
SUNfU1BJIDIzMSBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPj4gKwkJaW50ZXJydXB0LWFmZmluaXR5
ID0gPCZjcHUwPiwgPCZjcHUxPiwgPCZjcHUyPiwgPCZjcHUzPjsKPj4gKwl9Owo+PiArCj4+ICsJ
ZmlybXdhcmUgewo+PiArCQlzY21pOiBzY21pIHsKPj4gKwkJCWNvbXBhdGlibGUgPSAiYXJtLHNj
bWktc21jIjsKPj4gKwkJCXNobWVtID0gPCZzY21pX3NobWVtPjsKPj4gKwkJCWFybSxzbWMtaWQg
PSA8MHg4MjAwMDAxMD47Cj4+ICsJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKPj4gKwkJCSNzaXpl
LWNlbGxzID0gPDA+Owo+PiArCj4+ICsJCQlzY21pX2NsazogcHJvdG9jb2xAMTQgewo+PiArCQkJ
CXJlZyA9IDwweDE0PjsKPj4gKwkJCQkjY2xvY2stY2VsbHMgPSA8MT47Cj4+ICsJCQl9Owo+PiAr
CQl9Owo+PiArCj4+ICsJfTsKPj4gKwo+PiArCXBzY2kgewo+PiArCQljb21wYXRpYmxlID0gImFy
bSxwc2NpLTEuMCI7Cj4+ICsJCW1ldGhvZCA9ICJzbWMiOwo+PiArCX07Cj4+ICsKPj4gKwl0aW1l
ciB7Cj4+ICsJCWNvbXBhdGlibGUgPSAiYXJtLGFybXY4LXRpbWVyIjsKPj4gKwkJaW50ZXJydXB0
cyA9IDxHSUNfUFBJIDEzIChHSUNfQ1BVX01BU0tfU0lNUExFKDQpIHwgSVJRX1RZUEVfTEVWRUxf
SElHSCk+LAo+PiArCQkJICAgICA8R0lDX1BQSSAxNCAoR0lDX0NQVV9NQVNLX1NJTVBMRSg0KSB8
IElSUV9UWVBFX0xFVkVMX0hJR0gpPiwKPj4gKwkJCSAgICAgPEdJQ19QUEkgMTEgKEdJQ19DUFVf
TUFTS19TSU1QTEUoNCkgfCBJUlFfVFlQRV9MRVZFTF9ISUdIKT4sCj4+ICsJCQkgICAgIDxHSUNf
UFBJIDEwIChHSUNfQ1BVX01BU0tfU0lNUExFKDQpIHwgSVJRX1RZUEVfTEVWRUxfSElHSCk+Owo+
IFRoaXMgZG9lc24ndCBtYXRjaCB0aGUgR0lDdjMgYmluZGluZyBmb3IgUFBJcy4KZml4ZWQgaW4g
VjIuCj4KPj4gKwkJYXJtLG5vLXRpY2staW4tc3VzcGVuZDsKPiBPaCwgcmVhbGx5PyA6LSgKeWVz
LCBhcm0gYXJjaCB0aW1lciB3aWxsIHN0b3AgaW4gc3VzcGVuZCBtb2RlIG9uIHJrMzU2OC4KPgo+
PiArCX07Cj4+ICsKPj4gKwl4aW4yNG06IHhpbjI0bSB7Cj4+ICsJCWNvbXBhdGlibGUgPSAiZml4
ZWQtY2xvY2siOwo+PiArCQkjY2xvY2stY2VsbHMgPSA8MD47Cj4+ICsJCWNsb2NrLWZyZXF1ZW5j
eSA9IDwyNDAwMDAwMD47Cj4+ICsJCWNsb2NrLW91dHB1dC1uYW1lcyA9ICJ4aW4yNG0iOwo+PiAr
CX07Cj4+ICsKPj4gKwl4aW4zMms6IHhpbjMyayB7Cj4+ICsJCWNvbXBhdGlibGUgPSAiZml4ZWQt
Y2xvY2siOwo+PiArCQljbG9jay1mcmVxdWVuY3kgPSA8MzI3Njg+Owo+PiArCQljbG9jay1vdXRw
dXQtbmFtZXMgPSAieGluMzJrIjsKPj4gKwkJI2Nsb2NrLWNlbGxzID0gPDA+Owo+PiArCQlwaW5j
dHJsLW5hbWVzID0gImRlZmF1bHQiOwo+PiArCQlwaW5jdHJsLTAgPSA8JmNsazMya19vdXQwPjsK
Pj4gKwl9Owo+PiArCj4+ICsJc2NtaV9zaG1lbTogc2NtaS1zaG1lbUAxMGYwMDAgewo+PiArCQlj
b21wYXRpYmxlID0gImFybSxzY21pLXNobWVtIjsKPj4gKwkJcmVnID0gPDB4MCAweDAwMTBmMDAw
IDB4MCAweDEwMD47Cj4+ICsJfTsKPj4gKwo+PiArCWdpYzogaW50ZXJydXB0LWNvbnRyb2xsZXJA
ZmQ0MDAwMDAgewo+PiArCQljb21wYXRpYmxlID0gImFybSxnaWMtdjMiOwo+PiArCQkjaW50ZXJy
dXB0LWNlbGxzID0gPDM+Owo+PiArCQkjYWRkcmVzcy1jZWxscyA9IDwyPjsKPj4gKwkJI3NpemUt
Y2VsbHMgPSA8Mj47Cj4+ICsJCXJhbmdlczsKPj4gKwkJaW50ZXJydXB0LWNvbnRyb2xsZXI7Cj4+
ICsKPj4gKwkJcmVnID0gPDB4MCAweGZkNDAwMDAwIDAgMHgxMDAwMD4sIC8qIEdJQ0QgKi8KPj4g
KwkJICAgICAgPDB4MCAweGZkNDYwMDAwIDAgMHhjMDAwMD47IC8qIEdJQ1IgKi8KPj4gKwkJaW50
ZXJydXB0cyA9IDxHSUNfUFBJIDkgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4gUGxlYXNlIGFkZCB0
aGUgJ21iaS1hbGlhcycgcHJvcGVydHksIHdoaWNoIHNob3VsZCBtYXAgb250byB0aGUgR0lDQQo+
IHJhbmdlIHRoYXQgR0lDNjAwIHByb3ZpZGVzLiBBdCBsZWFzdCB0aGlzIGNvdWxkIGJlIHVzZWZ1
bCB0byBoYXZlIE1TSXMKPiBkZXNwaXRlIHRoZSBsYWNrIG9mIGEgd29ya2luZyBJVFMuIFdlIGNh
biB3b3JrIG91dCB0aGUgdXNhYmxlIHJhbmdlcwo+IG9uIGEgcGVyLWJvYXJkIGJhc2lzLgoKVGhh
bmtzLCB3ZSB3aWxsIHRyeSBtYmktYWxpYXMgbGF0ZXIsIGJ1dCB3ZSBhcmUgYWZyYWlkIHRoYXQg
dGhlIG51bWJlciAKb2YgU1BJIGlzIG5vdCBlbm91Z2guCgoKPgo+IFRoYW5rcywKPgo+IAlNLgo+
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
