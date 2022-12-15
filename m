Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06D09C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Dec 2022 15:03:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:From:Cc:MIME-Version:Date:Message-ID:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Qt+4sR2viz1r7YK3sl7+G9dBLJZix/R54PH0pm2AM4s=; b=gssKpb/zQbUuBPPLvhax1zCUQr
	fzhM//5e4WWY8VL+vrl0M70kUApO1mdFysMKZehYsL5lBKgF+0KHWcJDPX4LqfmBYG1qH2lxiG+20
	zuTLrkSVEHlasPMQXAKRDaINVRvJJosUU/UScIsaRR01VhWNkEQJ1GU7Sqkvvqczw8s38h3SrZIWr
	3fhd7ldTtivlhPkY5tRorMZTzWsHezx3WP2PLv4RwhtvvIlIMnQ8RmB4raWK03qJofPktp1tugpq4
	CL6G+7FiY6BHXjMV1NyCYCoCqkRAfxwPDmZSt+m8VoxIIuKUDNCtWjkBs+MiRqg730Kq/oRjcqZRe
	UeE++kOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5plu-009xkv-CM; Thu, 15 Dec 2022 15:03:42 +0000
Received: from mx3.molgen.mpg.de ([141.14.17.11] helo=mx1.molgen.mpg.de)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5plj-009xgO-Ow; Thu, 15 Dec 2022 15:03:34 +0000
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	(Authenticated sender: pmenzel)
	by mx.molgen.mpg.de (Postfix) with ESMTPSA id 71E3D60293A85;
	Thu, 15 Dec 2022 16:03:11 +0100 (CET)
Message-ID: <a2420e60-b0da-d3b0-88b4-04fcac950285@molgen.mpg.de>
Date: Thu, 15 Dec 2022 16:03:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
From: Paul Menzel <pmenzel@molgen.mpg.de>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Pine64 Pinebook Pro (rk3399): debugfs: File
 ':interrupt-controller@fee00000' in directory 'domains' already present!
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221215_070332_020171_0609280D 
X-CRM114-Status: UNSURE (   5.19  )
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

RGVhciBMaW51eCBmb2xrcywKCgpTdGFydGluZyBNYW5qYXJvIEFSTSBvbiBhIFBpbmU2NCBQaW5l
Ym9vayBQcm8sIExpbnV4IDYuMC43IGxvZ3M6CgpgYGAKWyAgICAwLjAwMDAwMF0gTGludXggdmVy
c2lvbiA2LjAuNy0yLU1BTkpBUk8tQVJNIAooYnVpbGR1c2VyQGZoLW1qci1idWlsZC1sb24teGxh
cmdlKSAoZ2NjIChHQ0MpIDEyLjEuMCwgR05VIGxkIChHTlUgCkJpbnV0aWxzKSAyLjM4KSAjMSBT
TVAgUFJFRU1QVCBTdW4gTm92IDYgMjM6MTU6MDEgVVRDIDIwMjIKW+KApl0KWyAgICAwLjQwNjI2
N10gZGVidWdmczogRmlsZSAnOmludGVycnVwdC1jb250cm9sbGVyQGZlZTAwMDAwJyBpbiAKZGly
ZWN0b3J5ICdkb21haW5zJyBhbHJlYWR5IHByZXNlbnQhClsgICAgMC40MDY5NzNdIGRlYnVnZnM6
IEZpbGUgJzppbnRlcnJ1cHQtY29udHJvbGxlckBmZWUwMDAwMCcgaW4gCmRpcmVjdG9yeSAnZG9t
YWlucycgYWxyZWFkeSBwcmVzZW50IQpbICAgIDAuNDA2OTkyXSBkZWJ1Z2ZzOiBGaWxlICc6aW50
ZXJydXB0LWNvbnRyb2xsZXJAZmVlMDAwMDAnIGluIApkaXJlY3RvcnkgJ2RvbWFpbnMnIGFscmVh
ZHkgcHJlc2VudCEKWyAgICAwLjQwNjk5OV0gZGVidWdmczogRmlsZSAnOmludGVycnVwdC1jb250
cm9sbGVyQGZlZTAwMDAwJyBpbiAKZGlyZWN0b3J5ICdkb21haW5zJyBhbHJlYWR5IHByZXNlbnQh
ClsgICAgMC40MDcwMDddIGRlYnVnZnM6IEZpbGUgJzppbnRlcnJ1cHQtY29udHJvbGxlckBmZWUw
MDAwMCcgaW4gCmRpcmVjdG9yeSAnZG9tYWlucycgYWxyZWFkeSBwcmVzZW50IQpbICAgIDAuNDA3
MDE0XSBkZWJ1Z2ZzOiBGaWxlICc6aW50ZXJydXB0LWNvbnRyb2xsZXJAZmVlMDAwMDAnIGluIApk
aXJlY3RvcnkgJ2RvbWFpbnMnIGFscmVhZHkgcHJlc2VudCEKWyAgICAwLjQwNzAyNF0gZGVidWdm
czogRmlsZSAnOmludGVycnVwdC1jb250cm9sbGVyQGZlZTAwMDAwJyBpbiAKZGlyZWN0b3J5ICdk
b21haW5zJyBhbHJlYWR5IHByZXNlbnQhClsgICAgMC40MDcwMzJdIGRlYnVnZnM6IEZpbGUgJzpp
bnRlcnJ1cHQtY29udHJvbGxlckBmZWUwMDAwMCcgaW4gCmRpcmVjdG9yeSAnZG9tYWlucycgYWxy
ZWFkeSBwcmVzZW50IQpbICAgIDAuNDA3MDM5XSBkZWJ1Z2ZzOiBGaWxlICc6aW50ZXJydXB0LWNv
bnRyb2xsZXJAZmVlMDAwMDAnIGluIApkaXJlY3RvcnkgJ2RvbWFpbnMnIGFscmVhZHkgcHJlc2Vu
dCEKWyAgICAwLjQwNzA0N10gZGVidWdmczogRmlsZSAnOmludGVycnVwdC1jb250cm9sbGVyQGZl
ZTAwMDAwJyBpbiAKZGlyZWN0b3J5ICdkb21haW5zJyBhbHJlYWR5IHByZXNlbnQhClsgICAgMC40
MDcwNTRdIGRlYnVnZnM6IEZpbGUgJzppbnRlcnJ1cHQtY29udHJvbGxlckBmZWUwMDAwMCcgaW4g
CmRpcmVjdG9yeSAnZG9tYWlucycgYWxyZWFkeSBwcmVzZW50IQpbICAgIDAuNDA3MDYxXSBkZWJ1
Z2ZzOiBGaWxlICc6aW50ZXJydXB0LWNvbnRyb2xsZXJAZmVlMDAwMDAnIGluIApkaXJlY3Rvcnkg
J2RvbWFpbnMnIGFscmVhZHkgcHJlc2VudCEKWyAgICAwLjQwNzA2OF0gZGVidWdmczogRmlsZSAn
OmludGVycnVwdC1jb250cm9sbGVyQGZlZTAwMDAwJyBpbiAKZGlyZWN0b3J5ICdkb21haW5zJyBh
bHJlYWR5IHByZXNlbnQhClsgICAgMC40MDcwNzVdIGRlYnVnZnM6IEZpbGUgJzppbnRlcnJ1cHQt
Y29udHJvbGxlckBmZWUwMDAwMCcgaW4gCmRpcmVjdG9yeSAnZG9tYWlucycgYWxyZWFkeSBwcmVz
ZW50IQpbICAgIDAuNDA3MDgyXSBkZWJ1Z2ZzOiBGaWxlICc6aW50ZXJydXB0LWNvbnRyb2xsZXJA
ZmVlMDAwMDAnIGluIApkaXJlY3RvcnkgJ2RvbWFpbnMnIGFscmVhZHkgcHJlc2VudCEKYGBgCgpJ
IGZvdW5kIGEgY29ycmVzcG9uZGluZyBkZWZpbml0aW9uIGluIHRoZSBkZXZpY2V0cmVlIApgYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkuZHRzaWA6CgpgYGAKICAgICAgICAgZ2lj
OiBpbnRlcnJ1cHQtY29udHJvbGxlckBmZWUwMDAwMCB7CiAgICAgICAgICAgICAgICAgY29tcGF0
aWJsZSA9ICJhcm0sZ2ljLXYzIjsKICAgICAgICAgICAgICAgICAjaW50ZXJydXB0LWNlbGxzID0g
PDQ+OwogICAgICAgICAgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDI+OwogICAgICAgICAgICAg
ICAgICNzaXplLWNlbGxzID0gPDI+OwogICAgICAgICAgICAgICAgIHJhbmdlczsKICAgICAgICAg
ICAgICAgICBpbnRlcnJ1cHQtY29udHJvbGxlcjsKCiAgICAgICAgICAgICAgICAgcmVnID0gPDB4
MCAweGZlZTAwMDAwIDAgMHgxMDAwMD4sIC8qIEdJQ0QgKi8KICAgICAgICAgICAgICAgICAgICAg
ICA8MHgwIDB4ZmVmMDAwMDAgMCAweGMwMDAwPiwgLyogR0lDUiAqLwogICAgICAgICAgICAgICAg
ICAgICAgIDwweDAgMHhmZmYwMDAwMCAwIDB4MTAwMDA+LCAvKiBHSUNDICovCiAgICAgICAgICAg
ICAgICAgICAgICAgPDB4MCAweGZmZjEwMDAwIDAgMHgxMDAwMD4sIC8qIEdJQ0ggKi8KICAgICAg
ICAgICAgICAgICAgICAgICA8MHgwIDB4ZmZmMjAwMDAgMCAweDEwMDAwPjsgLyogR0lDViAqLwog
ICAgICAgICAgICAgICAgIGludGVycnVwdHMgPSA8R0lDX1BQSSA5IElSUV9UWVBFX0xFVkVMX0hJ
R0ggMD47CiAgICAgICAgICAgICAgICAgaXRzOiBpbnRlcnJ1cHQtY29udHJvbGxlckBmZWUyMDAw
MCB7CiAgICAgICAgICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gImFybSxnaWMtdjMtaXRz
IjsKICAgICAgICAgICAgICAgICAgICAgICAgIG1zaS1jb250cm9sbGVyOwogICAgICAgICAgICAg
ICAgICAgICAgICAgI21zaS1jZWxscyA9IDwxPjsKICAgICAgICAgICAgICAgICAgICAgICAgIHJl
ZyA9IDwweDAgMHhmZWUyMDAwMCAweDAgMHgyMDAwMD47CiAgICAgICAgICAgICAgICAgfTsKCiAg
ICAgICAgICAgICAgICAgcHBpLXBhcnRpdGlvbnMgewogICAgICAgICAgICAgICAgICAgICAgICAg
cHBpX2NsdXN0ZXIwOiBpbnRlcnJ1cHQtcGFydGl0aW9uLTAgewogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBhZmZpbml0eSA9IDwmY3B1X2wwICZjcHVfbDEgJmNwdV9sMiAKJmNwdV9s
Mz47CiAgICAgICAgICAgICAgICAgICAgICAgICB9OwoKICAgICAgICAgICAgICAgICAgICAgICAg
IHBwaV9jbHVzdGVyMTogaW50ZXJydXB0LXBhcnRpdGlvbi0xIHsKICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgYWZmaW5pdHkgPSA8JmNwdV9iMCAmY3B1X2IxPjsKICAgICAgICAgICAg
ICAgICAgICAgICAgIH07CiAgICAgICAgICAgICAgICAgfTsKICAgICAgICAgfTsKYGBgCgoKS2lu
ZCByZWdhcmRzLAoKUGF1bAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
