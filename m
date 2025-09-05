Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D76BCA1010
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Sep 2025 07:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DLV1lhGcQl6D2UVeuAj/KA2j1aLz20OBq6rvPcYFu6s=; b=M3YBQTK3G7PAA9
	Vz1Aeexiic26qTbNYJCjemvbhXlMiGfVRsGNRuX/SxCE2AueLoha9nTtEhqy72caaAWoM1lZLmO4h
	7x5A7Kuv4ZydGY8nrpL9ucdy5hrUXydWOnqKLln0S+ArjMn9tmFeKbmzI9poMtSpRd/zIIyOTAFDv
	ZxGzWEZQRk4kJe485e3RqW3TrYSDuXPWJeAIGvrZEDV9zWuP6KtZuGhMk5pmpSTJPp9yeQXw7mGTA
	hqn4ZCBxE/SYgMv0ldoeRGv2OcWgVYhvC9mngCIUF9ap8eUZch5gd8fZnm2AUlWFb996HUl2vzHA/
	MPd5cGHm/JuZfe048hfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuQgT-0000000HXVy-0Vz9;
	Fri, 05 Sep 2025 07:16:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuPNa-0000000H75D-0e2l;
	Fri, 05 Sep 2025 05:52:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=deXU0gcF7yBIf+TpC1TbTUZssVkV6sZTs9sHoaAOhKo=; b=rco3EMV4Wt2VyqeetV9N8LyVPC
	dX6SlBGQuX3s5tjDwMdjzgjNcf9snf4erTwYbUd2Syp8dj8NpyLauI+F9q8WONGecmcxY24Ag/rAq
	dWx4ooli/OUns9yfIIvvWxkzlo8eRXKDOgHG/1AhSxp3mJdqdqhO2NawV/2tFjEq3oNrT7eyq1TlH
	nf7dB+c2oNYsAOn/bvpTql/QESyUQGHOpb1j+m3dy4mz6236lgeWhWEex+MTo8zs7TwPI9CBWFa7N
	ofNL0oRo7ifk5ab2jUNGaXdFji9RPT3BqJd+gw9VNOF7HOBxthcmUrqSrWJg47CJcvRcuc7CdM033
	dv8lWy/Q==;
Received: from i53875bb6.versanet.de ([83.135.91.182] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uuPNQ-0004GZ-TW; Fri, 05 Sep 2025 07:52:48 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: robh@kernel.org, WeiHao Li <cn.liweihao@gmail.com>
Cc: hjc@rock-chips.com, andy.yan@rock-chips.com, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 WeiHao Li <cn.liweihao@gmail.com>
Subject: Re: [PATCH v2 3/8] dt-bindings: clock: rk3368: Add SCLK_MIPIDSI_24M
Date: Fri, 05 Sep 2025 07:52:47 +0200
Message-ID: <2267196.NgBsaNRSFp@diego>
In-Reply-To: <20250905025632.222422-4-cn.liweihao@gmail.com>
References: <20250905025632.222422-1-cn.liweihao@gmail.com>
 <20250905025632.222422-4-cn.liweihao@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_225258_215832_6F0AB014 
X-CRM114-Status: GOOD (  14.69  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgpBbSBGcmVpdGFnLCA1LiBTZXB0ZW1iZXIgMjAyNSwgMDQ6NTY6MjcgTWl0dGVsZXVyb3DD
pGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBXZWlIYW8gTGk6Cj4gQWRkIGEgY2xvY2sgaWQgZm9y
IG1pcGkgZHNpIHJlZmVyZW5jZSBjbG9jaywgbWlwaSBkc2kgbm9kZSB1c2VkIGl0Lgo+IAo+IFNp
Z25lZC1vZmYtYnk6IFdlaUhhbyBMaSA8Y24ubGl3ZWloYW9AZ21haWwuY29tPgoKYW5vdGhlciBw
cm9jZXNzLXJlbGF0ZWQgY29tbWVudCA6LSkgLgoKKDEpIFlvdSBhbHJlYWR5IGdvdCBpbiB2MSB0
aGUKQWNrZWQtYnk6IFJvYiBIZXJyaW5nIChBcm0pIDxyb2JoQGtlcm5lbC5vcmc+CgpTbyB3aGVu
IHNlbmRpbmcgYSB2MiwgcGxlYXNlIGluY2x1ZGUgc3VjaCByZWNlaXZlZCB0YWdzCihpZiB0aGVy
ZSBhcmUgbm8gbWFqb3IgY2hhbmdlcyB0byB0aGUgcmVsZXZhbnQgY29kZSkKClRoaXMgcHJldmVu
dHMgcGVvcGxlIGZyb20gcmV2aWV3aW5nIHRoaW5ncyBuZWVkbGVzc2x5IG11bHRpcGxlIHRpbWVz
LgpTbyBwYXRjaCAzIHdvdWxkIGxvb2sgc29tZXRoaW5nIGxpa2U6CgotLS0tLS0tLS0tLS0KQWRk
IGEgY2xvY2sgaWQgZm9yIG1pcGkgZHNpIHJlZmVyZW5jZSBjbG9jaywgbWlwaSBkc2kgbm9kZSB1
c2VkIGl0LgoKQWNrZWQtYnk6IFJvYiBIZXJyaW5nIChBcm0pIDxyb2JoQGtlcm5lbC5vcmc+ClNp
Z25lZC1vZmYtYnk6IFdlaUhhbyBMaSA8Y24ubGl3ZWloYW9AZ21haWwuY29tPgotLS0tLS0tLS0t
LS0KCigyKSBBcyBjYW4gYmUgc2VlbiBpbgpodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1y
b2NrY2hpcC8xNzU2OTAxOTUwMTMuMzc3MTQ4OC40MzU4NzA3ODYyMjQ4NzMyNTcuYjQtdHlAc250
ZWNoLmRlLwoKSSBhbHJlYWR5IGFwcGxpZWQgdGhlIHR3byBjbG9jayBwYXRjaGVzLCBzbyBpbiBu
ZXdlciB2ZXJzaW9ucyBkb24ndApzZW5kIHRoZW0gYW55bW9yZS4KCgpKdXN0IHRvIGtlZXAgaW4g
bWluZCBmb3IgbmV4dCB0aW1lLgoKCkhlaWtvCgo+IC0tLQo+ICBpbmNsdWRlL2R0LWJpbmRpbmdz
L2Nsb2NrL3JrMzM2OC1jcnUuaCB8IDEgKwo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KykKPiAKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9yazMzNjgtY3J1
LmggYi9pbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL3JrMzM2OC1jcnUuaAo+IGluZGV4IGViYWUz
Y2JmOC4uYjk1MWUyOTA2IDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2sv
cmszMzY4LWNydS5oCj4gKysrIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9yazMzNjgtY3J1
LmgKPiBAQCAtNzIsNiArNzIsNyBAQAo+ICAjZGVmaW5lIFNDTEtfU0ZDCQkxMjYKPiAgI2RlZmlu
ZSBTQ0xLX01BQwkJMTI3Cj4gICNkZWZpbmUgU0NMS19NQUNSRUZfT1VUCQkxMjgKPiArI2RlZmlu
ZSBTQ0xLX01JUElEU0lfMjRNCTEyOQo+ICAjZGVmaW5lIFNDTEtfVElNRVIxMAkJMTMzCj4gICNk
ZWZpbmUgU0NMS19USU1FUjExCQkxMzQKPiAgI2RlZmluZSBTQ0xLX1RJTUVSMTIJCTEzNQo+IAoK
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
