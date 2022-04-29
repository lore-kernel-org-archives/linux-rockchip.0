Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0984C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Apr 2022 14:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P8RiIKPpS+KEbGffGGs1DJKgYCfqrURok3Z+YHCsDkk=; b=J+Fqg2oWnETi/t
	5b+DlEjNTeReGR8QxtWA8HZudH9uCRbenV2UZsS0sqcnrCbMttyMiDGvj0u4GT17jblUscQh5a8Ny
	bNMEjvWBbN+KX+Jkp+jMG+5c8du4EK7RjR+6yHTzrttmAHHdKVVrlfhdLxOnEEhorqz6BKv1MJax+
	lFs9ohnpu3tfEaRIpRcloXS051krOFkh/ZOESNc8Cnp63nixuarzklpOI0OXVRYz7693SotO4vHt2
	MQe7EV5aWilwEF3D13faBEzEj/UH/GkGVtGtBPj+/1XOqW4EhV1dibOjgUFlD89HmXJmuP4UKGjwo
	SlYtek0Ia/MQfDvAlL5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkRso-00Bdre-8g; Fri, 29 Apr 2022 14:46:10 +0000
Received: from mail-qt1-x832.google.com ([2607:f8b0:4864:20::832])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkRsl-00BdqC-LS
 for linux-rockchip@lists.infradead.org; Fri, 29 Apr 2022 14:46:09 +0000
Received: by mail-qt1-x832.google.com with SMTP id h3so1312809qtn.4
 for <linux-rockchip@lists.infradead.org>; Fri, 29 Apr 2022 07:46:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :content-transfer-encoding:user-agent:mime-version;
 bh=9gYARbcsROoRQuSPoSpdSfdzjCUBFI/hupA+J6RCICM=;
 b=MPIYQZwB0Uh/nZRz3paU+fYelB3PvD9iOyiFKynpzfDgpHL2BlgVCuZYT8qQnGHUyy
 qhc7Z/odasMpp5DlUG3P/9+W1Mn0t7pvFFqcXOcLPcFp9T1WhUWgO2qxUw0apTR3C62j
 m2hHEDL4JnVNDAlcPUKx5TovyU60q7sUlhGM6quVBjRgXDQxi3a6iTd2q3jjL0xVWuxb
 j0cczeIKTJJGIvchVfn879alN1Lv8NzMNI1sV+I/23AH/dnhIzI8UIjiSUAuAYTeIFfi
 QcgkZ8e0rsLiA7itATS1IDrQaO47fvOLTwINVwWxaIAvHhPt5GKqQtV2KdzC+BQEqQf2
 s5UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:content-transfer-encoding:user-agent:mime-version;
 bh=9gYARbcsROoRQuSPoSpdSfdzjCUBFI/hupA+J6RCICM=;
 b=MjPhsdeEON44VUycVY4YbTODI3SjSmVDOr1STYGf/b/gFdXnsrfI2FuQqrWqarSaTt
 ts4rFi03sLizwU7kWHOwZMoTSZok+RQMrozGW+PAZ1ExguNBUdVSQlHeiCrBgEtfwsDP
 NUlc1JgU88xUxZQdZV48WRyIcdoz1HdtMp7WB0IQSBhsQ+4kBdsfJuda0pYBXRwvgSFo
 1AJLR179z6eHzdtjtYSvN0fCIAfiDp6Ul78rvjy/mnuRW/TyDbgMlbLIDQd9yiGJXwyy
 wSuYBYGyRgiwf18tWiX7hxGlogt8saRoI/mkhF2+eQBMpnCTq+nZZqmHtgyD/xG3XS3t
 WLqQ==
X-Gm-Message-State: AOAM531dRg3vP6oXRoXiODM3i8iIQz/Zj6cblZr8C8tm81uvQ6WIqgOs
 siseIpDoImPLtENRS2uE0h3bJw==
X-Google-Smtp-Source: ABdhPJyQlCnjwbzppNjeoRa4lp/DB/LMiYCu/zkxnyLyc/FgC/Ihsp/mns5E09890GNRLtvRLppcCA==
X-Received: by 2002:a05:622a:1714:b0:2f3:5758:c789 with SMTP id
 h20-20020a05622a171400b002f35758c789mr26722108qtk.299.1651243563653; 
 Fri, 29 Apr 2022 07:46:03 -0700 (PDT)
Received: from nicolas-tpx395.localdomain (173-246-12-168.qc.cable.ebox.net.
 [173.246.12.168]) by smtp.gmail.com with ESMTPSA id
 i14-20020ac85e4e000000b002f364a81d79sm1900279qtx.4.2022.04.29.07.46.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Apr 2022 07:46:03 -0700 (PDT)
Message-ID: <198ce3981ad15844627581f9519cab67ed2a81c1.camel@ndufresne.ca>
Subject: Re: [PATCH 0/3] Enable JPEG Encoder on RK3566/RK3568
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Peter Geis
 <pgwipeout@gmail.com>, Michael Riesch <michael.riesch@wolfvision.net>,
 Liang Chen <cl@rock-chips.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Date: Fri, 29 Apr 2022 10:46:01 -0400
In-Reply-To: <20220427224438.335327-1-frattaroli.nicolas@gmail.com>
References: <20220427224438.335327-1-frattaroli.nicolas@gmail.com>
User-Agent: Evolution 3.44.0 (3.44.0-1.fc36) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220429_074607_911670_56D86F95 
X-CRM114-Status: GOOD (  19.86  )
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

TGUgamV1ZGkgMjggYXZyaWwgMjAyMiDDoCAwMDo0NCArMDIwMCwgTmljb2xhcyBGcmF0dGFyb2xp
IGEgw6ljcml0wqA6Cj4gSGVsbG8sCj4gCj4gdGhlIGZvbGxvd2luZyBzZXJpZXMgYWRkcyBzdXBw
b3J0IGZvciBhbmQgZW5hYmxlcyB0aGUgaGFyZHdhcmUgSlBFRwo+IGVuY29kZXIgb24gdGhlIFJL
MzU2NiBhbmQgUkszNTY4IGxpbmUgb2YgU29DcyBieSBSb2NrY2hpcC4KPiAKPiBUaGUgSlBFRyBl
bmNvZGVyIGlzIGl0cyBvd24gbGl0dGxlIEhhbnRybyBpbnN0YW5jZSB3aXRoIHNlZW1pbmdseSBq
dXN0Cj4gdGhlIGVuY29kZSBmdW5jdGlvbmFsaXR5LgoKSSdtIGEgbGl0dGxlIHN1c3BpY2lvdXMg
YWJvdXQgdGhpcyBzdGF0ZW1lbnQuIEkgYmVsaWV2ZSB0aGUgSGFudHJvIGNvbWJvIGlzCmlkZW50
aWNhbCB0byBSSzMzOTkgYW5kIHRoYXQgeW91IGFyZSBjb25mdXNpbmcgd2l0aCBSb2NrY2hpcCBK
UEVHIGVuY29kZXIgaGVyZS4KSGVyZSdzIHRoZSBzb3VyY2Ugb2YgbXkgc3VzcGljaW9uOgoKaHR0
cHM6Ly9naXRodWIuY29tL0plZmZ5Q04vcm9ja2NoaXBfbWlycm9ycy9ibG9iL21wcC9vc2FsL21w
cF9zb2MuY3BwI0w2MzcKCkFzIHRoaXMgZ2V0IGJ1cm50IGludG8gRFQsIHdlIHJlYWxseSBuZWVk
IHRvIGdldCB0aGlzIHJpZ2h0LiBQZXJoYXBzIHdlIG5lZWQgdG8KcnVuIHRoZSByZWZlcmVuY2Ug
c29mdHdhcmUgdG8gdmVyaWZ5ID8gUGluZyBtZSBpZiB5b3UgbmVlZCBoZWxwIHdpdGggdGhhdC4K
Cj4gCj4gVGhlIGZpcnN0IHBhdGNoIG1vZGlmaWVzIHRoZSBiaW5kaW5ncyB3aXRoIGEgbmV3IGNv
bXBhdGlibGUsIGFuZCBhZGRzCj4gdGhlIGFiaWxpdHkgdG8ganVzdCBoYXZlIGEgdmVwdSBpbnRl
cnJ1cHQgd2l0aG91dCBhIHZkcHUgaW50ZXJydXB0Lgo+IAo+IFRoZSBzZWNvbmQgcGF0Y2ggbWFr
ZXMgdGhlIGFjdHVhbCBkcml2ZXIgY2hhbmdlcyB0byBzdXBwb3J0IHRoaXMgdmFyaWFudC4KPiAK
PiBUaGUgdGhpcmQgYW5kIGZpbmFsIHBhdGNoIG1ha2VzIHRoZSBuZWNlc3NhcnkgZGV2aWNlIHRy
ZWUgY2hhbmdlcyBmb3IKPiB0aGUgcmszNTZ4IGRldmljZSB0cmVlIGZpbGUgdG8gYWRkIGJvdGgg
dGhlIG5vZGUgZm9yIHRoZSBlbmNvZGVyIGFuZAo+IGl0cyBNTVUuCj4gCj4gVGhlIHNlcmllcyBo
YXMgYmVlbiB0ZXN0ZWQgb24gYSBQSU5FNjQgUXVhcnR6NjQgTW9kZWwgQSB3aXRoIGFuIFJLMzU2
Ngo+IFNvQyB1c2luZyBHU3RyZWFtZXIuCj4gCj4gUmVnYXJkcywKPiBOaWNvbGFzIEZyYXR0YXJv
bGkKPiAKPiBOaWNvbGFzIEZyYXR0YXJvbGkgKDMpOgo+ICAgZHQtYmluZGluZ3M6IG1lZGlhOiBy
b2NrY2hpcC12cHU6IEFkZCBSSzM1NjggSlBFRyBjb21wYXRpYmxlCj4gICBtZWRpYTogaGFudHJv
OiBBZGQgc3VwcG9ydCBmb3IgUkszNTZ4IEpQRUcgZW5jb2Rlcgo+ICAgYXJtNjQ6IGR0czogcm9j
a2NoaXA6IEFkZCBKUEVHIGVuY29kZXIgbm9kZSB0byByazM1NngKPiAKPiAgLi4uL2JpbmRpbmdz
L21lZGlhL3JvY2tjaGlwLXZwdS55YW1sICAgICAgICAgIHwgIDIgKwo+ICBhcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU2eC5kdHNpICAgICAgfCAyMSArKysrKysrCj4gIGRyaXZlcnMv
c3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jICAgICB8ICAxICsKPiAgZHJpdmVycy9z
dGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9faHcuaCAgICAgIHwgIDEgKwo+ICAuLi4vc3RhZ2lu
Zy9tZWRpYS9oYW50cm8vcm9ja2NoaXBfdnB1X2h3LmMgICAgfCA2MiArKysrKysrKysrKysrKysr
KysrCj4gIDUgZmlsZXMgY2hhbmdlZCwgODcgaW5zZXJ0aW9ucygrKQo+IAoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
