Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E626EC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Mar 2022 07:04:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HJcKVaNJq+9dnXF1gP+FAzyEYYKqDihxK6y+r3BN4hA=; b=L3c6MyHLVTpAwH
	JcHnMcd6g1EKU/YetwK8KttCAPrCP3gLlO7IoA8hyye6U4MZC1nBpclnfKDwXeDWWVbqJkCu2SL9S
	wquVy79Ysn7gucX9xLY5GK3RPh+Odfvh2dEhosC6b4NTjmLmYjKXul4E8bVmwUxwvZd8l0NaO7+xd
	+P0i/TXPxjDdQ06Tf7mEMXPKJhrA/OG3s7FQAYpNytYDxHzPEleADmXPfoCj/2Pj70NEs/4y9to8c
	/wZli1X3y7cgZsf/hOSiHlc510bUPg4O7IqlvDH+UyS9wknNx6iZi/sU9lCRhhjfOXQUk/g4/gBes
	Bge9HkKMnW/CFI3gpZOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPfW0-005VUI-LN; Thu, 03 Mar 2022 07:04:44 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPfVw-005VSC-V3; Thu, 03 Mar 2022 07:04:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1646291055;
 bh=c8B08IuN0ueJ5P1Qw3m4mZcla5OpJNkiL6GjsRpN5GY=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=hZaujvICUT5hjdB6Lp+cImer0Md6B745NTlpYuexL6B27u5X4lYSDPsd0hI8v+bIK
 yPqf87EaL996Qtg2ExqEUipUGTMS+Tw76vJ8zo4oYFxopgkNj2Fln1EDQon3qf1xIg
 6Kn/358VgBKo66uqDsfkNTDjOzxUjMD3NQx0egj0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.154.125] ([217.61.154.125]) by web-mail.gmx.net
 (3c-app-gmx-bs69.server.lan [172.19.170.214]) (via HTTP); Thu, 3 Mar 2022
 08:04:15 +0100
MIME-Version: 1.0
Message-ID: <trinity-1ca1f3fd-1eeb-4c8d-a7e2-65851eb8002b-1646291055736@3c-app-gmx-bs69>
From: Frank Wunderlich <frank-w@public-files.de>
To: Rob Herring <robh@kernel.org>
Cc: Frank Wunderlich <linux@fw-web.de>, devicetree@vger.kernel.org, Damien
 Le Moal <damien.lemoal@opensource.wdc.com>, Krzysztof Kozlowski
 <krzysztof.kozlowski@canonical.com>, Hans de Goede <hdegoede@redhat.com>,
 Jens Axboe <axboe@kernel.dk>, linux-ide@vger.kernel.org,
 linux-kernel@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, Peter Geis
 <pgwipeout@gmail.com>, Michael Riesch <michael.riesch@wolfvision.net>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com
Subject: Aw: Re: [PATCH v4 1/5] dt-bindings: Convert ahci-platform DT
 bindings to yaml
Date: Thu, 3 Mar 2022 08:04:15 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <Yh+0B+iKx1gJXXCk@robh.at.kernel.org>
References: <20220301152421.57281-1-linux@fw-web.de>
 <20220301152421.57281-2-linux@fw-web.de>
 <Yh+0B+iKx1gJXXCk@robh.at.kernel.org>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:/lChWm1rfjWQIQe56yrqiZm3Y/F+aYSHAhSYt2mbFXFdfKYmHyqTFxKsF/VidPyXBtz9B
 7wR4CfTQ9nqIidZ2bWyS+UF9dqeyvvZE2/0x1FomSQe+j0VjqQk3qexBjQPMLHCDlP2tXLZlBsGa
 QBS9Jwxf2do9zTXbnkzKTXiO4L+/ZoCvP4wZU+z6gweuR97SP+Xko7O52mvTGmt5GwABhf5TKX1S
 sn4TZYtnMs1L8cs9uic5xCqL37CC//+7ptb7BN6pk27+YDUeL8IF7+qKvIYDAwwZsuQX1d1WMIeB
 A4=
X-UI-Out-Filterresults: notjunk:1;V03:K0:SKDpZk6cLk0=:qnvAElGXZA38EYbbf7iG9I
 x2MFrBDk9KWc9CGfyaQZsF7A7x2AKK7Ouvkzd3x0QffCTeUq8uDrhHyLX7CX3UsTpwCep0Ygi
 jsmF7gcb26NsqP2x9A8io9eRUKcwCyrbR8AKPy9ZtL0o5pYemEyv69QCA+kWjA9auq5AFqcfB
 dIG8rN1+CAnc9A00+X9xI+3s5dJ9u7BCopnbU4pVk1EwO/IrLrB4ZLbJFhjxtf5Ttu8xCASHu
 S1pOTckExZS0q97mVVkvC9T7A29bdqLoMSJ03LUm5acTAA3CvKw9NPn0GqwL8j0LinvOxR69Q
 3SP9rKd/4SsG3RkItDGFst67vJ/LaDvunXDC9aZC3p8tJlzmXLciVhAn5+xDxSaJafbKYUTQj
 +oUxjVRc/A9aRtLRWpSdr3qeHOkolI4N7oG1tblp/QYIWhsMkY8MCb4lFj73+6O2q7hixksfy
 RdUoDTH3jx9MZSrXZK1J/b1E4mrNBM43EOQ+E/eI5gncyuKCHmYEBU5bqWYllaDetkXfRvtmL
 9o9+OmDNq9XE1kQSk3YQUFLZ/YBEeB23Uw67FbkfFNzme/7EwHAyhi3E7vzPS39mF4lgAuaCl
 XHvGJnosohw1/HakN7NvEkYiUz/rca4KxwjgFGyBU5vBsptZ+uFi7Xwe5bYLlCT2HpfSPk+DL
 F4IBJ05JDDNSEA5P8greI8EiNEkU9fjYRFzrbrn65CkmRDKd+D6iotTQAw/H/+zUXhPR76Q9q
 KIfhkZ8geKPHcoC91j3ORzXkOg6Uq2hJTG+O522WVVtnggvEutvX8thTE6nxBMcppqyN00bcr
 SqvHZmg
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_230441_366870_B5B11E18 
X-CRM114-Status: GOOD (  23.34  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgUm9iLAoKdGhhbmtzIGZvciByZXZpZXcsCgpoYXZlIHByZXBhcmVkIHRoZSBjaGFuZ2VzIGJh
c2VkIG9uIHlvdXJzIGFuZCBrcnp5c3p0b2YgY29tbWVudHMKCmh0dHBzOi8vZ2l0aHViLmNvbS9m
cmFuay13L0JQSS1SMi00LjE0L2NvbW1pdHMvNS4xNy1uZXh0LTIwMjIwMjI1CgooanVzdCBpZ25v
cmUgdGhlIHRvcCAyIGNvbW1pdHMpIGkgdGhvdWdodCBpIGhhZCBhIHNpemUtY2VsbHMtZXJyb3Is
IGJ1dCBkaWQgbm90IGdldCB0aGVtIGFnYWluIGFmdGVyIHJldmVydGluZyB0aGlzIHBhcnQsIHNl
ZW1zIHRoZXkgYXJlIGZpeGVkIGJ5IGluY2x1c2lvbiBvZiB0aGUgc2F0YS1jb21tb24gYmluZGlu
ZwoKPiBHZXNlbmRldDogTWl0dHdvY2gsIDAyLiBNw6RyeiAyMDIyIHVtIDE5OjE0IFVocgo+IFZv
bjogIlJvYiBIZXJyaW5nIiA8cm9iaEBrZXJuZWwub3JnPgo+IEFuOiAiRnJhbmsgV3VuZGVybGlj
aCIgPGxpbnV4QGZ3LXdlYi5kZT4KCj4gT24gVHVlLCBNYXIgMDEsIDIwMjIgYXQgMDQ6MjQ6MTdQ
TSArMDEwMCwgRnJhbmsgV3VuZGVybGljaCB3cm90ZToKPiA+IEZyb206IEZyYW5rIFd1bmRlcmxp
Y2ggPGZyYW5rLXdAcHVibGljLWZpbGVzLmRlPgoKPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXRhL2FoY2ktcGxhdGZvcm0ueWFtbCBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hdGEvYWhjaS1wbGF0Zm9ybS55YW1sCj4gPiBuZXcg
ZmlsZSBtb2RlIDEwMDY0NAo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi5jZjY3ZGRmYzZhZmIKPiA+
IC0tLSAvZGV2L251bGwKPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9hdGEvYWhjaS1wbGF0Zm9ybS55YW1sCj4gPiBAQCAtMCwwICsxLDE2MiBAQAo+ID4gKyMgU1BE
WC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKPiA+ICslWUFNTCAxLjIKPiA+ICstLS0KPiA+
ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL2F0YS9haGNpLXBsYXRmb3JtLnlh
bWwjCj4gPiArJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3Jl
LnlhbWwjCj4gPiArCj4gPiArdGl0bGU6IEFIQ0kgU0FUQSBDb250cm9sbGVyCj4gCj4gYmxhbmsg
bGluZS4KCmRvbmUKIAo+ID4gK2Rlc2NyaXB0aW9uOgo+ID4gKyAgU0FUQSBub2RlcyBhcmUgZGVm
aW5lZCB0byBkZXNjcmliZSBvbi1jaGlwIFNlcmlhbCBBVEEgY29udHJvbGxlcnMuCj4gPiArICBF
YWNoIFNBVEEgY29udHJvbGxlciBzaG91bGQgaGF2ZSBpdHMgb3duIG5vZGUuCj4gPiArCj4gPiAr
ICBJdCBpcyBwb3NzaWJsZSwgYnV0IG5vdCByZXF1aXJlZCwgdG8gcmVwcmVzZW50IGVhY2ggcG9y
dCBhcyBhIHN1Yi1ub2RlLgo+ID4gKyAgSXQgYWxsb3dzIHRvIGVuYWJsZSBlYWNoIHBvcnQgaW5k
ZXBlbmRlbnRseSB3aGVuIGRlYWxpbmcgd2l0aCBtdWx0aXBsZQo+ID4gKyAgUEhZcy4KPiAKPiBZ
b3UgbmVlZCBhICd8JyBhZnRlciAnZGVzY3JpcHRpb24nIGlmIHlvdSB3YW50IHRvIG1haW50YWlu
IHRoZSAKPiBwYXJhZ3JhcGhzLgoKb2sgYWRkZWQgfCB0byBhbGwgbXVsdGlsaW5lIGRlc2NyaXB0
aW9ucwoKPiA+ICsKPiA+ICttYWludGFpbmVyczoKPiA+ICsgIC0gSGFucyBkZSBHb2VkZSA8aGRl
Z29lZGVAcmVkaGF0LmNvbT4KPiA+ICsgIC0gSmVucyBBeGJvZSA8YXhib2VAa2VybmVsLmRrPgo+
ID4gKwo+ID4gK2FsbE9mOgo+ID4gKy0gJHJlZjogInNhdGEtY29tbW9uLnlhbWwjIgo+ID4gKwo+
ID4gK3Byb3BlcnRpZXM6Cj4gPiArICBjb21wYXRpYmxlOgo+ID4gKyAgICBvbmVPZjoKPiA+ICsg
ICAgICAtIGl0ZW1zOgo+ID4gKyAgICAgICAgLSBlbnVtOgo+ID4gKyAgICAgICAgICAtIGJyY20s
aXByb2MtYWhjaQo+ID4gKyAgICAgICAgICAtIG1hcnZlbGwsYXJtYWRhLThrLWFoY2kKPiA+ICsg
ICAgICAgICAgLSBtYXJ2ZWxsLGJlcmxpbjJxLWFoY2kKPiA+ICsgICAgICAgIC0gY29uc3Q6IGdl
bmVyaWMtYWhjaQo+ID4gKyAgICAgIC0gZW51bToKPiA+ICsgICAgICAgIC0gYnJjbSxpcHJvYy1h
aGNpCj4gPiArICAgICAgICAtIGNhdml1bSxvY3Rlb24tNzEzMC1haGNpCj4gPiArICAgICAgICAt
IGhpc2lsaWNvbixoaXNpLWFoY2kKPiA+ICsgICAgICAgIC0gaWJtLDQ3Nmd0ci1haGNpCj4gPiAr
ICAgICAgICAtIG1hcnZlbGwsYXJtYWRhLTM3MDAtYWhjaQo+ID4gKyAgICAgICAgLSBtYXJ2ZWxs
LGFybWFkYS0zODAtYWhjaQo+ID4gKyAgICAgICAgLSBzbnBzLGR3Yy1haGNpCj4gPiArICAgICAg
ICAtIHNucHMsc3BlYXItYWhjaQo+IAo+IEluc3RhbGwgeWFtbGxpbnQgYW5kIHJ1biAnbWFrZSBk
dF9iaW5kaW5nX2NoZWNrJy4gSXQncyBnb2luZyB0byAKPiBjb21wbGFpbiBhYm91dCB0aGUgaW5k
ZW50YXRpb24uCgp5b3UncmUgcmlnaHQsIGkgaGFkIG5vIHlhbWxsaW50IGluc3RhbGxlZCwgc28g
aSBoYXZlIG5vdCBzZWVuIHRoZXNlIGluZGVudGlvbiBlcnJvcnMKCj4gPiArICBhaGNpLXN1cHBs
eToKPiA+ICsgICAgZGVzY3JpcHRpb246Cj4gPiArICAgICAgcmVndWxhdG9yIGZvciBBSENJIGNv
bnRyb2xsZXIKPiA+ICsKPiA+ICsgIGNsb2NrLW5hbWVzOgo+IAo+IEdyb3VwIHdpdGggJ2Nsb2Nr
cycKCm9rLCBhbHJlYWR5IGRvbmUgaW4gbXkgdHJlZSBiZWNhdXNlIG9mIGtyenlzenRvZnMgY29t
bWVudAoKPiA+ICsgIHBvcnRzLWltcGxlbWVudGVkOgo+ID4gKyAgICAkcmVmOiAnL3NjaGVtYXMv
dHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvdWludDMyJwo+ID4gKyAgICBkZXNjcmlwdGlvbjoKPiA+
ICsgICAgICBNYXNrIHRoYXQgaW5kaWNhdGVzIHdoaWNoIHBvcnRzIHRoYXQgdGhlIEhCQSBzdXBw
b3J0cwo+ID4gKyAgICAgIGFyZSBhdmFpbGFibGUgZm9yIHNvZnR3YXJlIHRvIHVzZS4gVXNlZnVs
IGlmIFBPUlRTX0lNUEwKPiA+ICsgICAgICBpcyBub3QgcHJvZ3JhbW1lZCBieSB0aGUgQklPUywg
d2hpY2ggaXMgdHJ1ZSB3aXRoCj4gPiArICAgICAgc29tZSBlbWJlZGRlZCBTb0NzLgo+ID4gKyAg
ICBtYXhJdGVtczogMQo+IAo+IEEgdWludDMyIGlzIG9ubHkgZXZlciAxIGl0ZW0uIERyb3AuCj4g
Cj4gSUlSQywgaXNuJ3QgdGhlIG1heCBoZXJlIDB4ZmY/IEFkZCBjb25zdHJhaW50cy4KCmkndmUg
Zm91bmQgaXQgb25seSBzZXQgdG8gMHgxIHNvIGkgaGF2ZSBjdXJyZW50bHkgc2V0IHRoZSBtYXhp
bXVtIHRvIDB4MSwgaXMgdGhpcyBvaz8KSWYgc29tZSBoaWdoZXIgdmFsdWUgaXMgbmVlZGVkIGJp
bmRpbmcgbmVlZHMgdG8gYmUgdG91Y2hlZC4uLgoKPiA+ICsKPiA+ICsgIHJlZy1uYW1lczoKPiA+
ICsgICAgbWF4SXRlbXM6IDEKPiAKPiBHcm91cCB3aXRoICdyZWcnLgoKb2sKCj4gPiArcGF0dGVy
blByb3BlcnRpZXM6Cj4gPiArICAiXnNhdGEtcG9ydEBbMC05YS1mXSskIjoKPiA+ICsgICAgdHlw
ZTogb2JqZWN0Cj4gCj4gICAgICAgIGFkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZQoKb2sgYWRk
ZWQgdG8gbXkgdHJlZQoKYW5kIG5lZWRlZCB0byBhZGQgcGh5LW5hbWVzIGJlY2F1c2Ugc29tZSBt
YXJ2ZWxsIGJvYXJkcyB1c2luZyB0aGlzCgphcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJt
YWRhLTgwNDAtbWNiaW4tc2luZ2xlc2hvdC5kdC55YW1sOiBzYXRhQDU0MDAwMDogc2F0YS1wb3J0
QDE6ICdwaHktbmFtZXMnIGRvZXMgbm90IG1hdGNoIGFueSBvZiB0aGUgcmVnZXhlczogJ3BpbmN0
cmwtWzAtOV0rJwoKbm93IGkgaGF2ZSBvbmx5IHRoZSBtYXJ2ZWxsLWVycm9ycyBhYm91dCBpbmNv
bXBsZXRlIHNhdGEtcG9ydCBzdWJub2RlICh3aXRob3V0IHBoeS90YXJnZXQtc3VwcGx5KSBsaWtl
IGkgbWVudGlvbiBpbiB0aGUgcGF0Y2guLi5ob3cgdG8gcHJvY2VlZCB3aXRoIHRoaXM/CgpyZWdh
cmRzIEZyYW5rCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
