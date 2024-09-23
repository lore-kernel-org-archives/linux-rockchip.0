Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33381CF9C6F
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Sep 2024 07:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:Subject:References:Cc:To:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4LkrxdyFshVtyrsVdruIa49d7qpe/hpeJHUJz1ndjkU=; b=DZu+Nq7zS0c2Kh
	rWEEfFCyJl3XrYvwb0NI0NPL3gKGQhOKupTCIe2193c4s2Nxs3XQjamzWBJjGx5heuCw1KG876Nh6
	h+DlVaDvBLFD9KBcGBJCxgCGMguzQOCXWbu8HDwFF2vzGGVMhOULAJuxoWCnAppcl5ttegW7SWCyn
	nTc3HcV3rOM+gVvMAe4UOzDmYnl/upFneden4GEWjIRkXt1s2ZsfkcImX+LLFDPFwvfoJkCvUizgG
	cykhBw84oXUG/XhZPm7a6RoTYVah7npUh9WkPmbuP/DwBpiBjYaUdleQvw9SbUYNwKeOI2I96FbV0
	w8MsHh0LbnuvEEFVliqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ssdpY-0000000GZOc-216H;
	Mon, 23 Sep 2024 07:50:00 +0000
Received: from relay-b03.edpnet.be ([212.71.1.220])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ssdpU-0000000GZNG-3W3Y
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Sep 2024 07:49:58 +0000
X-ASG-Debug-ID: 1727077782-24639c1dae10993b0001-fBy1Pp
Received: from [192.168.177.53] (94.105.112.108.dyn.edpnet.net [94.105.112.108]) by relay-b03.edpnet.be with ESMTP id DvKqFEDaGp8HfWqk; Mon, 23 Sep 2024 09:49:42 +0200 (CEST)
X-Barracuda-Envelope-From: janpieter.sollie@kabelmail.de
X-Barracuda-Effective-Source-IP: 94.105.112.108.dyn.edpnet.net[94.105.112.108]
X-Barracuda-Apparent-Source-IP: 94.105.112.108
Message-ID: <ef2f6e41-bf9e-470e-a416-fda7ce5d8a51@kabelmail.de>
Date: Mon, 23 Sep 2024 09:48:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: linux.amoon@gmail.com
Cc: Jason@zx2c4.com, clabbe@baylibre.com, heiko@sntech.de,
 herbert@gondor.apana.org.au, hl@rock-chips.com,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mike.rudenko@gmail.com,
 robin.murphy@arm.com, shawn.lin@rock-chips.com, troy.lin@rock-chips.com,
 ty@wevs.org
References: <CANAwSgTTzZOwBaR9zjJ5VMpxm5BydtW6rB2S7jg+dnoX8hAoWg@mail.gmail.com>
Subject: Re: [PATCH] hw_random: rockchip: import driver from vendor tree
Content-Language: nl
X-ASG-Orig-Subj: Re: [PATCH] hw_random: rockchip: import driver from vendor tree
From: Janpieter Sollie <janpieter.sollie@kabelmail.de>
Autocrypt: addr=janpieter.sollie@kabelmail.de; keydata=
 xsBNBFhRXM0BCADnifwYnfbhQtJso1eeT+fjEDJh8OY5rwfvAbOhHyy003MJ82svXPmM/hUS
 C6hZjkE4kR7k2O2r+Ev6abRSlM6s6rJ/ZftmwOA7E8vdSkrFDNqRYL7P18+Iq/jM/t/6lsZv
 O+YcjF/gGmzfOCZ5AByQyLGmh5ZI3vpqJarXskrfi1QiZFeCG4H5WpMInml6NzeTpwFMdJaM
 JCr3BwnCyR+zeev7ROEWyVRcsj8ufW8ZLOrML9Q5QVjH7tkwzoedOc5UMv80uTaA5YaC1GcZ
 57dAna6S1KWy5zx8VaHwXBwbXhDHWvZP318um2BxeTZbl21yXJrUMbYpaoLJzA5ZaoCFABEB
 AAHNMEphbnBpZXRlciBTb2xsaWUgPGphbnBpZXRlci5zb2xsaWVAa2FiZWxtYWlsLmRlPsLA
 pwQTAQgAUQIbIwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgAUJD6DYHRYhBGBBYpsrUd7LDG6r
 UrFUjEUPH5JbBQJlAXcQEhhoa3A6Ly9wZ3AubWl0LmVkdQAKCRCxVIxFDx+SW3oXB/9A4g3v
 /Mq6uZlBDWBrQ98AFhlkRLwI2mDiNOlP4zJlejqt8S2GvCvhiQAtXV0BSl42sHo9Uxda8sZM
 d1eOU+oPexaK9iryCEYvOj+IK+n/rR8kyH5P7lzdpHIKYGtZ2y2NtpEuIA9A28MvliGjutJ2
 QIAdUaO1GdFVHXvHConuXvBfpmJsBhJeVfoTdzrTlloFTloCC+00a6Q6ndGnwzQQVgfgzRtq
 +x3O8smVnzsHb7Wu25+sbJl55GONAqyxuRmAF8IB4HAQ9gjgiCxTfjhCt9rhXQgPlT8EAuKT
 9MohNtqpXXZFpuQUYRMEqpM7mPfbm4L8fXiPv/szVM0ZIwVCzsBNBFhRXM0BCAD2fJkCQE6L
 UjUpVltzXjxeRTNQK/W3PC1i3EsjHFSJT04MY12zmXWI0ItNqnRaB2c/X/rtWTuYazSsgQTQ
 P/qZSts2890GD51y3BAw443rN0plVp4dX6JG/p3V0ha7rXwFjn4Hzgt4IDJSVuNa9nGEceId
 qTnvZO+F4ukgzV2YVAUWcuDowCBDfRm3yU0GU3rxOHfBTpYwljqFWbGqijsTjF1/Le4ULF+q
 HUQqwTDY1ijpxRCIeu46WoQEf5Dv0aTIwOJgPK8229uRDHlHhMPvXpqtBYKwQ/rOCz7EfITD
 lPsHhjnqR+mjeLy7tK/qIyaE7A8HTdoxYoYhAR+AqylRABEBAAHCwHwEGAEIACYCGwwWIQRg
 QWKbK1Heywxuq1KxVIxFDx+SWwUCXowzcAUJD6DYIwAKCRCxVIxFDx+SW1J3CADK79k3T1La
 jEHZGkxWPoAuixN8F6pf7hnofoR2KFkMbQk+9WYfiGsOcZwJjiUyQgiaSZcdz6QGkGPDjfLL
 iNDKvGGGAgRT99ruA4uyfAXjObbrMp8VGr0fI6eRF3nWuh5Rk4W2DY/wjaygA0FJ/vpw8XFs
 9NycYvk7yPcXW29N6/56TIc1I7SxmsEzwriGxvuRNZBzuNsEvdgzkF0kTL4nMhH/olPFW1+f
 2Y0kA3aAa1ZyjzHsgDUBSKyv35MJRxPLkLK4I/5DisNfjfygE/gvSh+Iss+ZqtZhYzR9oA6k
 mg7rIQaHeVNOBwFsmkHmXDmH5beCJsgB6hwxiQAUaOaO
In-Reply-To: <CANAwSgTTzZOwBaR9zjJ5VMpxm5BydtW6rB2S7jg+dnoX8hAoWg@mail.gmail.com>
X-Barracuda-Connect: 94.105.112.108.dyn.edpnet.net[94.105.112.108]
X-Barracuda-Start-Time: 1727077782
X-Barracuda-URL: https://212.71.1.220:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at edpnet.be
X-Barracuda-Scan-Msg-Size: 1745
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=7.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.130843
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------------------------
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240923_004957_044353_DE1223ED 
X-CRM114-Status: UNSURE (   7.66  )
X-CRM114-Notice: Please train this message.
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkhpIGV2ZXJ5Ym9keSwKCklzIHRoZXJlIGFueSBjaGFuY2UgdGhpcyByYW5kb20gZHJpdmVyIHdp
bGwgYmUgdXBzdHJlYW1lZD8KSSdtIHVzaW5nIGl0IGluc3RlYWQgb2YgdGhlIGJ1aWx0LWluIGNy
eXB0byBkcml2ZXIgKHJrMzMyOC1jcnlwdG8pLCBhcyB0aGlzIGNyeXB0byBkcml2ZXIgc2hvd2Vk
IAp0aGUgZm9sbG93aW5nOgoKPiBbICDCoMKgwqA5LjI3MDU0OV0gcmszMjg4LWNyeXB0byBmZjA2
MDAwMC5jcnlwdG86IHdpbGwgcnVuIHJlcXVlc3RzIHB1bXAgd2l0aCByZWFsdGltZSBwcmlvcml0
eQo+IFsgIMKgwqDCoDkuMjcwNjg3XSByazMyODgtY3J5cHRvIGZmMDYwMDAwLmNyeXB0bzogUmVn
aXN0ZXIgZWNiKGFlcykgYXMgZWNiLWFlcy1yawo+IFsgIMKgwqDCoDkuMjcwODA4XSByazMyODgt
Y3J5cHRvIGZmMDYwMDAwLmNyeXB0bzogUmVnaXN0ZXIgY2JjKGFlcykgYXMgY2JjLWFlcy1yawo+
IFsgIMKgwqDCoDkuMjcwODMxXSByazMyODgtY3J5cHRvIGZmMDYwMDAwLmNyeXB0bzogUmVnaXN0
ZXIgZWNiKGRlcykgYXMgZWNiLWRlcy1yawo+IFsgIMKgwqDCoDkuMjcwODQ4XSByazMyODgtY3J5
cHRvIGZmMDYwMDAwLmNyeXB0bzogUmVnaXN0ZXIgY2JjKGRlcykgYXMgY2JjLWRlcy1yawo+IFsg
IMKgwqDCoDkuMjcwODY0XSByazMyODgtY3J5cHRvIGZmMDYwMDAwLmNyeXB0bzogUmVnaXN0ZXIg
ZWNiKGRlczNfZWRlKSBhcyBlY2ItZGVzMy1lZGUtcmsKPiBbICDCoMKgwqA5LjI3MDg4MF0gcmsz
Mjg4LWNyeXB0byBmZjA2MDAwMC5jcnlwdG86IFJlZ2lzdGVyIGNiYyhkZXMzX2VkZSkgYXMgY2Jj
LWRlczMtZWRlLXJrCj4gWyAgwqDCoMKgOS4yNzA4OTZdIHJrMzI4OC1jcnlwdG8gZmYwNjAwMDAu
Y3J5cHRvOiBSZWdpc3RlciBzaGExIGFzIHJrLXNoYTEKPiBbICDCoMKgwqA5LjI3MDkxNV0gcmsz
Mjg4LWNyeXB0byBmZjA2MDAwMC5jcnlwdG86IFJlZ2lzdGVyIHNoYTI1NiBhcyByay1zaGEyNTYK
PiBbICDCoMKgwqA5LjI3MDkzMl0gcmszMjg4LWNyeXB0byBmZjA2MDAwMC5jcnlwdG86IFJlZ2lz
dGVyIG1kNSBhcyByay1tZDUKCnNvIHRoZSBvcHRpb25zIGhlcmUgYXJlIHByZXR0eSB1c2VsZXNz
OgpzdGFuZGFyZCB0bHMgLyBzc2ggKGt0bHMgYW55b25lPykgYWxtb3N0IG5ldmVyIHVzZXMgZWNi
IG9yIGNiYyBjaXBoZXJzLCBhbmQgYWJvdXQgZGVzIC4uLiB5ZWFoLCAKd29uJ3QgZGlnIGludG8g
dGhhdCBvbmUuCkkgdGhpbmsgYSByazMzMjggZGV2aWNlIHdpbGwgYWN0dWFsbHkgYmVuZWZpdCBt
b3JlIGZyb20gYSBlbnRyb3B5IHNvdXJjZSAoZXZlbiBpZiBpdCdzIG5vdCAKaGlnaC1xdWFsaXR5
KSB0aGFuIGZyb20gc2hhMS8yNTYgd2hpY2ggYXJlIGFsbW9zdCBhbHdheXMgY292ZXJlZCBieSBh
cm12OCBjcnlwdG8gZXh0ZW5zaW9ucy4KSSB0cmllZCB0aGlzIHBhdGNoIChhbmQgZGlzYWJsZWQg
dGhlIGNyeXB0byBkZXZpY2UgaW4gZHRzKSwgaXQgd29ya3MuCk9mZiBjb3Vyc2UgdGhlcmUgYXJl
IEZJUFMgZmFpbHVyZXMsIGJ1dCB0aGUgdXNlciBlbXBsb3lpbmcgYSByazMzMjggYm9hcmQgcHJv
YmFibHkga25vd3MgdGhpcyBpcyAKbm90IGEgaGlnaC1zZWN1cml0eSBkZXZpY2UuCgpBbnkgY2hh
bmNlcyBoZXJlPyBhcHBseWluZyB0aGUgcGF0Y2ggb24gNi42LjQ4IChldmVuIHdpdGggY2xhbmcg
dGhpbkxUTykgd29ya3MgZmxhd2xlc3NseS4KCmtpbmQgcmVnYXJkcywKCkphbnBpZXRlciBTb2xs
aWUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
