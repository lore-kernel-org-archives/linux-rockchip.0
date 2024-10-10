Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E71A1CF07BD
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Oct 2024 07:47:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4tYUq+DD/g+oiLHmLdOXAk/0r6PKHsyk2ZXVYzxtzks=; b=TeOT6QKHyI4u9M
	Ej6QVzSQBSKQ+xNAqvjJZZhXWHIo2jPCU56GGrWuDCTB+XFPcsmi/zjRz5213Io0qv2Ou7ghy/sRo
	TiDvF9RuPTqViLZor8ZEmMI7lu4AneJfThAM7nUs8BlTSayvyzHDypTm0QZeOK4x8O4NR2vlDwpib
	CZn8A5hc4e6ilFxDDy++jSb+GgzKQzsa9RTlZ73rpa2kacE+XnnHhtiNU6t37emDlXB4prt5t3sW5
	6tPDPheTM7duWNeVGE4Uev4KyMQUSNTWfmijuXqqPBSaMOfhKHdkUnirsJBCGltzcKsXCzwwHMK17
	dmeU9DRVUXDya/42Lemw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syntG-0000000Bryd-49KA;
	Thu, 10 Oct 2024 07:47:19 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1synWW-0000000BpRx-2QRl
	for linux-rockchip@bombadil.infradead.org;
	Thu, 10 Oct 2024 07:23:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=5IOlFpLvsPq3qlIZHkbwyXPVkIt/jV0bl5GNKYhS0rs=; b=moD7E1DF9UzhpcyjSzsF7dDg5S
	Jewn6r40PNftGEZn0cLQwysj4TvHpepgwvxTbbPY9Z8vwpn3es+yZr+ND47lmI1uoq0bxCHY8JFSc
	E0C44fL+9ml82XMi2BR99Rn0IbHH8LlvhHq9Y/9K80X5LjERi/bbvHQNGTpKORM8H+TZXN0rzBSGc
	wFYmnj+lEmSMen1mdJSHXyOxn2diVnB0y5ztK8s4Hq+VR5ESjwsLvuMwgJB215UZKBs9tw4Q1PB/S
	l8nMSX/oLnc5bPRZ3XQxpdOQH9XmElSohn+e1BO4y04v7R+T5VJzcop2fibieXlp4iVENBcCojt64
	rC93dLSA==;
Received: from mail-oa1-x33.google.com ([2001:4860:4864:20::33])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1synWT-00000005Dhh-34h4
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Oct 2024 07:23:47 +0000
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-2884910c846so333036fac.0
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Oct 2024 00:23:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728545021; x=1729149821; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5IOlFpLvsPq3qlIZHkbwyXPVkIt/jV0bl5GNKYhS0rs=;
        b=CVcEUQ7Tqc6Cv74QtKFI/O8H4fl4vhZ36+uk0sVPnql4sSHQu3bGNmIbOqYwss1aZQ
         T1rRCy0owiUZGnatSrECcQVXxGxEA7l8xuPH1/D3tA5BHvA1R3YIIUVY+q9ecOA3mIeu
         ES5tYhWSvBbKTZWsyOZQ05QGVTH1pz/L6qIyyEvGr7IupymTlVaMPKvzA3yHkyrrceBr
         3LkbFy4FBVXxfppR1uIBDdReivGaggnBb3gp0AroUgxGIA63k77RBiDbQPVUmI6G7Zna
         qmgVHH/QEjR8ZbbZgzpOuaKr1AwFT1DGIO3/+V5wPvU5O7fOY7gnNa/wDKQ05y+RKCHV
         Imag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728545021; x=1729149821;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5IOlFpLvsPq3qlIZHkbwyXPVkIt/jV0bl5GNKYhS0rs=;
        b=OjWxYXYViNrg84Pya0+71LauXhhVJ4Jt9GlMSDdfEWZWUz2DMpDAy1XdK/j8NRkCjK
         XnCDOHq0Nz9y41Uk6RgQxVg7QxhrDC+tnct/KnbulzvRYXyY4mSxRfIcxPEQyEPP7fbY
         NcSBYNo/qB+KbQk0QMUJOeKVe5xM+JMVEmlwzq6KHTdE2DR7mo5qxqdBpWO/1zihaSaF
         RB8LiQwkdOVKoWimhx2b2Svi/erRzRp3sPlRG3bDWrR4PTqt1+f+hPW49/FujX3SQ1YK
         M8qiwwbmKaXB20lx7p/rKI7E9dsBVPJFu6hg5xPghuqxLq+yhkLGVKETtxiNMfJMp5AC
         2LrQ==
X-Forwarded-Encrypted: i=1; AJvYcCUcEF5TyuKng259Liv54cTUtFNwKn/p3WC5Ktm0Avus5IOrR4ZmXwD+EfhdGx7foQJkumdx+qdn41HzjAc4lg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzFDoWB67VjdypfkehGnPFNw9GLoi55SifbXsRYWydhJL+G+gj3
	0BmaJWgsCCdoefdg31v0R2l5uhPK1ab5+moefUauekOKHC4sFZEm1130zzBrtw==
X-Google-Smtp-Source: AGHT+IHdOeJvm7WVc4pJJZXKYMNh6j10WFnaWXG7+Y60rtwDAg3iK6ibsr+/4bayJBKskQxATQMM3w==
X-Received: by 2002:a05:6871:580d:b0:260:fbc0:96f2 with SMTP id 586e51a60fabf-2883451c512mr4829882fac.34.1728545021485;
        Thu, 10 Oct 2024 00:23:41 -0700 (PDT)
Received: from thinkpad ([220.158.156.184])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7ea44968210sm490197a12.90.2024.10.10.00.23.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 00:23:41 -0700 (PDT)
Date: Thu, 10 Oct 2024 12:53:35 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v3 06/12] PCI: rockchip-ep: Refactor
 rockchip_pcie_ep_probe() memory allocations
Message-ID: <20241010072335.2e3r7gxupyz57and@thinkpad>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-7-dlemoal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241007041218.157516-7-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241010_082345_924883_CB96BB97 
X-CRM114-Status: GOOD (  28.11  )
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

T24gTW9uLCBPY3QgMDcsIDIwMjQgYXQgMDE6MTI6MTJQTSArMDkwMCwgRGFtaWVuIExlIE1vYWwg
d3JvdGU6Cj4gSW50cm9kdWNlIHRoZSBmdW5jdGlvbiByb2NrY2hpcF9wY2llX2VwX2dldF9yZXNv
dXJjZXMoKSB0byBwYXJzZSB0aGUgRFQKPiBub2RlIG9mIGEgcm9ja2NoaXAgUENJZSBlbmRwb2lu
dCBjb250cm9sbGVyIGFuZCBhbGxvY2F0ZSB0aGUgb3V0Ym91bmQKPiBtZW1vcnkgcmVnaW9uIGFu
ZCBtZW1vcnkgbmVlZGVkIGZvciBJUlEgaGFuZGxpbmcuIFRoaXMgZnVuY3Rpb24gdGlkaWVzCj4g
dXAgcm9ja2NoaXBfcGNpZV9lcF9wcm9iZSgpLiBObyBmdW5jdGlvbmFsIGNoYW5nZS4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBEYW1pZW4gTGUgTW9hbCA8ZGxlbW9hbEBrZXJuZWwub3JnPgo+IC0tLQo+
ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtZXAuYyB8IDEwOSArKysrKysr
KysrKystLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA2MiBpbnNlcnRpb25zKCspLCA0NyBk
ZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2ll
LXJvY2tjaGlwLWVwLmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtZXAu
Ywo+IGluZGV4IGE5YjMxOWQ0ZTUwNy4uNTIzZTljZGZkMjQxIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1lcC5jCj4gKysrIGIvZHJpdmVycy9wY2kv
Y29udHJvbGxlci9wY2llLXJvY2tjaGlwLWVwLmMKPiBAQCAtNTI0LDE1ICs1MjQsNzAgQEAgc3Rh
dGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgcm9ja2NoaXBfcGNpZV9lcF9vZl9tYXRjaFtd
ID0gewo+ICAJe30sCj4gIH07Cj4gIAo+ICtzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfZXBfZ2V0
X3Jlc291cmNlcyhzdHJ1Y3Qgcm9ja2NoaXBfcGNpZV9lcCAqZXApCgpBbG1vc3QgYWxsIGNvbnRy
b2xsZXIgZHJpdmVycyB1c2UgZ2V0X3Jlc291cmNlcygpIGZ1bmN0aW9uIHRvIGFjcXVpcmUgY29u
dHJvbGxlcgpyZXNvdXJjZXMgbGlrZSBNTUlPLCBjbGssIFBIWSBldGMuLi4gU28gaWYgeW91IHdl
cmUgdG8gcmVmYWN0b3IsIEknZCBzdWdnZXN0IHRvCmZpcnN0IHJlbmFtZSByb2NrY2hpcF9wY2ll
X3BhcnNlX2VwX2R0KCkgdG8gcm9ja2NoaXBfcGNpZV9nZXRfcmVzb3VyY2VzKCkgdG8KbWFpbnRh
aW4gdW5pZm9ybWl0eS4KCkFuZCBpZiB5b3Ugd2FudCB0byBtb3ZlIG9iIG1lbW9yeSBhbGxvY2F0
aW9uIHRvIGEgc2luZ2xlIGZ1bmN0aW9uIHRvIGtlZXAKcHJvYmUoKSBzaG9ydGVyLCB5b3Ugc2hv
dWxkIHVzZSBhIGRpZmZlcmVudCBmdW5jdGlvbiBsaWtlCnJvY2tjaGlwX3BjaWVfb2JfYWxsb2Mo
KSBvciBzb21ldGhpbmcgc2ltaWxhci4KCi0gTWFuaQoKPiArewo+ICsJc3RydWN0IHJvY2tjaGlw
X3BjaWUgKnJvY2tjaGlwID0gJmVwLT5yb2NrY2hpcDsKPiArCXN0cnVjdCBkZXZpY2UgKmRldiA9
IHJvY2tjaGlwLT5kZXY7Cj4gKwlzdHJ1Y3QgcGNpX2VwY19tZW1fd2luZG93ICp3aW5kb3dzID0g
TlVMTDsKPiArCWludCBlcnIsIGk7Cj4gKwo+ICsJZXJyID0gcm9ja2NoaXBfcGNpZV9wYXJzZV9l
cF9kdChyb2NrY2hpcCwgZXApOwo+ICsJaWYgKGVycikKPiArCQlyZXR1cm4gZXJyOwo+ICsKPiAr
CWVwLT5vYl9hZGRyID0gZGV2bV9rY2FsbG9jKGRldiwgZXAtPm1heF9yZWdpb25zLCBzaXplb2Yo
KmVwLT5vYl9hZGRyKSwKPiArCQkJCSAgIEdGUF9LRVJORUwpOwo+ICsKPiArCWlmICghZXAtPm9i
X2FkZHIpCj4gKwkJcmV0dXJuIC1FTk9NRU07Cj4gKwo+ICsJd2luZG93cyA9IGRldm1fa2NhbGxv
YyhkZXYsIGVwLT5tYXhfcmVnaW9ucywKPiArCQkJICAgICAgIHNpemVvZihzdHJ1Y3QgcGNpX2Vw
Y19tZW1fd2luZG93KSwgR0ZQX0tFUk5FTCk7Cj4gKwlpZiAoIXdpbmRvd3MpCj4gKwkJcmV0dXJu
IC1FTk9NRU07Cj4gKwo+ICsJZm9yIChpID0gMDsgaSA8IGVwLT5tYXhfcmVnaW9uczsgaSsrKSB7
Cj4gKwkJd2luZG93c1tpXS5waHlzX2Jhc2UgPSByb2NrY2hpcC0+bWVtX3Jlcy0+c3RhcnQgKyAo
U1pfMU0gKiBpKTsKPiArCQl3aW5kb3dzW2ldLnNpemUgPSBTWl8xTTsKPiArCQl3aW5kb3dzW2ld
LnBhZ2Vfc2l6ZSA9IFNaXzFNOwo+ICsJfQo+ICsJZXJyID0gcGNpX2VwY19tdWx0aV9tZW1faW5p
dChlcC0+ZXBjLCB3aW5kb3dzLCBlcC0+bWF4X3JlZ2lvbnMpOwo+ICsJZGV2bV9rZnJlZShkZXYs
IHdpbmRvd3MpOwo+ICsKPiArCWlmIChlcnIgPCAwKSB7Cj4gKwkJZGV2X2VycihkZXYsICJmYWls
ZWQgdG8gaW5pdGlhbGl6ZSB0aGUgbWVtb3J5IHNwYWNlXG4iKTsKPiArCQlyZXR1cm4gZXJyOwo+
ICsJfQo+ICsKPiArCWVwLT5pcnFfY3B1X2FkZHIgPSBwY2lfZXBjX21lbV9hbGxvY19hZGRyKGVw
LT5lcGMsICZlcC0+aXJxX3BoeXNfYWRkciwKPiArCQkJCQkJICBTWl8xTSk7Cj4gKwlpZiAoIWVw
LT5pcnFfY3B1X2FkZHIpIHsKPiArCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byByZXNlcnZlIG1l
bW9yeSBzcGFjZSBmb3IgTVNJXG4iKTsKPiArCQlnb3RvIGVycl9lcGNfbWVtX2V4aXQ7Cj4gKwl9
Cj4gKwo+ICsJZXAtPmlycV9wY2lfYWRkciA9IFJPQ0tDSElQX1BDSUVfRVBfRFVNTVlfSVJRX0FE
RFI7Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gKwo+ICtlcnJfZXBjX21lbV9leGl0Ogo+ICsJcGNpX2Vw
Y19tZW1fZXhpdChlcC0+ZXBjKTsKPiArCj4gKwlyZXR1cm4gZXJyOwo+ICt9Cj4gKwo+ICtzdGF0
aWMgdm9pZCByb2NrY2hpcF9wY2llX2VwX3JlbGVhc2VfcmVzb3VyY2VzKHN0cnVjdCByb2NrY2hp
cF9wY2llX2VwICplcCkKPiArewo+ICsJcGNpX2VwY19tZW1fZXhpdChlcC0+ZXBjKTsKPiArfQo+
ICsKPiAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX2VwX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYpCj4gIHsKPiAgCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7Cj4g
IAlzdHJ1Y3Qgcm9ja2NoaXBfcGNpZV9lcCAqZXA7Cj4gIAlzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAq
cm9ja2NoaXA7Cj4gIAlzdHJ1Y3QgcGNpX2VwYyAqZXBjOwo+IC0Jc2l6ZV90IG1heF9yZWdpb25z
Owo+IC0Jc3RydWN0IHBjaV9lcGNfbWVtX3dpbmRvdyAqd2luZG93cyA9IE5VTEw7Cj4gLQlpbnQg
ZXJyLCBpOwo+ICsJaW50IGVycjsKPiAgCXUzMiBjZmdfbXNpLCBjZmdfbXNpeF9jcDsKPiAgCj4g
IAllcCA9IGRldm1fa3phbGxvYyhkZXYsIHNpemVvZigqZXApLCBHRlBfS0VSTkVMKTsKPiBAQCAt
NTUyLDEzICs2MDcsMTMgQEAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX2VwX3Byb2JlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAllcC0+ZXBjID0gZXBjOwo+ICAJZXBjX3NldF9k
cnZkYXRhKGVwYywgZXApOwo+ICAKPiAtCWVyciA9IHJvY2tjaGlwX3BjaWVfcGFyc2VfZXBfZHQo
cm9ja2NoaXAsIGVwKTsKPiArCWVyciA9IHJvY2tjaGlwX3BjaWVfZXBfZ2V0X3Jlc291cmNlcyhl
cCk7Cj4gIAlpZiAoZXJyKQo+ICAJCXJldHVybiBlcnI7Cj4gIAo+ICAJZXJyID0gcm9ja2NoaXBf
cGNpZV9lbmFibGVfY2xvY2tzKHJvY2tjaGlwKTsKPiAgCWlmIChlcnIpCj4gLQkJcmV0dXJuIGVy
cjsKPiArCQlnb3RvIGVycl9yZWxlYXNlX3Jlc291cmNlczsKPiAgCj4gIAllcnIgPSByb2NrY2hp
cF9wY2llX2luaXRfcG9ydChyb2NrY2hpcCk7Cj4gIAlpZiAoZXJyKQo+IEBAIC01NjgsNDcgKzYy
Myw5IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9lcF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1f
ZGV2aWNlICpwZGV2KQo+ICAJcm9ja2NoaXBfcGNpZV93cml0ZShyb2NrY2hpcCwgUENJRV9DTElF
TlRfTElOS19UUkFJTl9FTkFCTEUsCj4gIAkJCSAgICBQQ0lFX0NMSUVOVF9DT05GSUcpOwo+ICAK
PiAtCW1heF9yZWdpb25zID0gZXAtPm1heF9yZWdpb25zOwo+IC0JZXAtPm9iX2FkZHIgPSBkZXZt
X2tjYWxsb2MoZGV2LCBtYXhfcmVnaW9ucywgc2l6ZW9mKCplcC0+b2JfYWRkciksCj4gLQkJCQkg
ICBHRlBfS0VSTkVMKTsKPiAtCj4gLQlpZiAoIWVwLT5vYl9hZGRyKSB7Cj4gLQkJZXJyID0gLUVO
T01FTTsKPiAtCQlnb3RvIGVycl91bmluaXRfcG9ydDsKPiAtCX0KPiAtCj4gIAkvKiBPbmx5IGVu
YWJsZSBmdW5jdGlvbiAwIGJ5IGRlZmF1bHQgKi8KPiAgCXJvY2tjaGlwX3BjaWVfd3JpdGUocm9j
a2NoaXAsIEJJVCgwKSwgUENJRV9DT1JFX1BIWV9GVU5DX0NGRyk7Cj4gIAo+IC0Jd2luZG93cyA9
IGRldm1fa2NhbGxvYyhkZXYsIGVwLT5tYXhfcmVnaW9ucywKPiAtCQkJICAgICAgIHNpemVvZihz
dHJ1Y3QgcGNpX2VwY19tZW1fd2luZG93KSwgR0ZQX0tFUk5FTCk7Cj4gLQlpZiAoIXdpbmRvd3Mp
IHsKPiAtCQllcnIgPSAtRU5PTUVNOwo+IC0JCWdvdG8gZXJyX3VuaW5pdF9wb3J0Owo+IC0JfQo+
IC0JZm9yIChpID0gMDsgaSA8IGVwLT5tYXhfcmVnaW9uczsgaSsrKSB7Cj4gLQkJd2luZG93c1tp
XS5waHlzX2Jhc2UgPSByb2NrY2hpcC0+bWVtX3Jlcy0+c3RhcnQgKyAoU1pfMU0gKiBpKTsKPiAt
CQl3aW5kb3dzW2ldLnNpemUgPSBTWl8xTTsKPiAtCQl3aW5kb3dzW2ldLnBhZ2Vfc2l6ZSA9IFNa
XzFNOwo+IC0JfQo+IC0JZXJyID0gcGNpX2VwY19tdWx0aV9tZW1faW5pdChlcGMsIHdpbmRvd3Ms
IGVwLT5tYXhfcmVnaW9ucyk7Cj4gLQlkZXZtX2tmcmVlKGRldiwgd2luZG93cyk7Cj4gLQo+IC0J
aWYgKGVyciA8IDApIHsKPiAtCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBpbml0aWFsaXplIHRo
ZSBtZW1vcnkgc3BhY2VcbiIpOwo+IC0JCWdvdG8gZXJyX3VuaW5pdF9wb3J0Owo+IC0JfQo+IC0K
PiAtCWVwLT5pcnFfY3B1X2FkZHIgPSBwY2lfZXBjX21lbV9hbGxvY19hZGRyKGVwYywgJmVwLT5p
cnFfcGh5c19hZGRyLAo+IC0JCQkJCQkgIFNaXzFNKTsKPiAtCWlmICghZXAtPmlycV9jcHVfYWRk
cikgewo+IC0JCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIHJlc2VydmUgbWVtb3J5IHNwYWNlIGZv
ciBNU0lcbiIpOwo+IC0JCWVyciA9IC1FTk9NRU07Cj4gLQkJZ290byBlcnJfZXBjX21lbV9leGl0
Owo+IC0JfQo+IC0KPiAtCWVwLT5pcnFfcGNpX2FkZHIgPSBST0NLQ0hJUF9QQ0lFX0VQX0RVTU1Z
X0lSUV9BRERSOwo+IC0KPiAgCS8qCj4gIAkgKiBNU0ktWCBpcyBub3Qgc3VwcG9ydGVkIGJ1dCB0
aGUgY29udHJvbGxlciBzdGlsbCBhZHZlcnRpc2VzIHRoZSBNU0ktWAo+ICAJICogY2FwYWJpbGl0
eSBieSBkZWZhdWx0LCB3aGljaCBjYW4gbGVhZCB0byB0aGUgUm9vdCBDb21wbGV4IHNpZGUKPiBA
QCAtNjM4LDEwICs2NTUsOCBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfZXBfcHJvYmUoc3Ry
dWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgCXBjaV9lcGNfaW5pdF9ub3RpZnkoZXBjKTsK
PiAgCj4gIAlyZXR1cm4gMDsKPiAtZXJyX2VwY19tZW1fZXhpdDoKPiAtCXBjaV9lcGNfbWVtX2V4
aXQoZXBjKTsKPiAtZXJyX3VuaW5pdF9wb3J0Ogo+IC0Jcm9ja2NoaXBfcGNpZV9kZWluaXRfcGh5
cyhyb2NrY2hpcCk7Cj4gK2Vycl9yZWxlYXNlX3Jlc291cmNlczoKPiArCXJvY2tjaGlwX3BjaWVf
ZXBfcmVsZWFzZV9yZXNvdXJjZXMoZXApOwo+ICBlcnJfZGlzYWJsZV9jbG9ja3M6Cj4gIAlyb2Nr
Y2hpcF9wY2llX2Rpc2FibGVfY2xvY2tzKHJvY2tjaGlwKTsKPiAgCXJldHVybiBlcnI7Cj4gLS0g
Cj4gMi40Ni4yCj4gCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCu
muCuv+CuteCuruCvjQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
