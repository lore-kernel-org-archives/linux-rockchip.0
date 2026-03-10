Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E9E7EA8550
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Mar 2026 08:42:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rG1IOlubYWsaZOjZ/GZIu+rYPHkzZriggxjUP3n3mtM=; b=fd3i6sRFQC7fWB
	80B/sEVr/Oo+5/tf2shkVj46lBi6aY+w8hfO1lCZXRw3mzpVnCd2ZVuosL4QCzlQgFQ7ZkB1otw/e
	GYYxLjAwnukw7LTDymyuZFRaIbl5lw/CzBsYGHQXzPhsbAAv8hqk99pj9ck9bCNvaqjMKT+ntgsL9
	3Ngz/51jUnF9Ch81ZEkjaND+HuowN+JRz6WCMWpgwJrUHiutI/qsjOEcwggP7VurOEa6M0foDI+hI
	G29vuwNoVJ/C80kiUScDhFWehReKby9xeieBdRvGZU8wkgsEVetKOQKv9vjZtYEUW1oy7wLoQsDHl
	RzIjtWS0aAb3uSQmipSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzsfb-00000008y5Y-0UHq;
	Tue, 10 Mar 2026 08:42:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzsfZ-00000008y3B-0ghV
	for linux-rockchip@bombadil.infradead.org;
	Tue, 10 Mar 2026 08:42:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:Reply-To:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description;
	bh=E3LnZLWj7Gk8mfX7i4o5/JcU3ncWfdEk4XN75StFNl4=; b=k++0rtJLMuoQIW+CYQ7JGBqIJF
	iCyBBtyo0DH/SwylWdnvu9/O6MWLfyTtRILBktAzmSUJdETJP7OZzifJmBxuKItTjaxSnngiuGjiE
	FgrUU/JMPlNgUPosldZMblJE9xBfuKIeIRbTi+iPwk53oI9Cop7vV6NToegDIMAF6bHs5aQOxh+gb
	h77oJB0bNxrwk9M6t08idMOvN0Kfk0MnlwYCSqcAoxHDnIvk98x397KTsnYK1SrivWRvkXMkcNdnI
	hpGa01tCrrv21G/LDP/PzmAwRAkkOjP5VyJi1zUrnL5vAxl60ZTSuzByFDbiCZYBUduLHX+Permgx
	GCLta6IA==;
Received: from sea.source.kernel.org ([172.234.252.31])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzsfV-0000000E0P2-2Uf9
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Mar 2026 08:42:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 2AA924453E
	for <linux-rockchip@lists.infradead.org>; Tue, 10 Mar 2026 08:42:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09775C2BCB8
	for <linux-rockchip@lists.infradead.org>; Tue, 10 Mar 2026 08:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773132140;
	bh=+hdxOVwm077ylsjLu0wR0T6SVFeW4T69FussqsDDRHA=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=GTvciSqq+x8/zCMOtuyLli8n1vUX944BWGl817kV9StHpWn/ZCnegugKuRQsP31zc
	 BzAgQT7AReGa+w9FNTeP0MAZpzB8BrfJNqjl8scrI0LyBvBQY7rG+irphiVi9e9Pay
	 H9kcdpBYkJtzeYMnQcffp0/6DqalOD85Ero6OlpmOhuOcyq6hlw5qVhAebzG2/YIXB
	 DnMhuDw8gGVkaM59hP3I087c+z0UZ4KsUJrbnznXy+njrrp6YDnmMQ++sMxHFuRr6G
	 HFUyohjET/eAy2mVYsy+9Qp1f3+sfdypP6FF2U5DFevqkN4m7+QA91ws+sAjszCwIj
	 fWqe+XRjm8C8A==
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-38a32d36396so41991181fa.0
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Mar 2026 01:42:19 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUv+c35qi9Rd7qAIV3W8vmjPcaN4hVun3FnxWv+BSsxRlpOg31EgPjI3yvomieXMYJl5VakCYtQ3xCS7oxvng==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw1Ym0XAMPfPnoUFyyCjMdFjw/r8eL2HYdBz5F6IxvQLkV6OTy1
	paOCOH6oJDfRTG+A++eO9iPAIDIp6uWoYhYfzPBJDOm93t1GmOO9nEISJaMf+IEqZyr02OUsEA5
	G0n+0ZHhT4+5T52NGP0V6i1zSC+p/ReM=
X-Received: by 2002:a2e:880b:0:b0:388:4329:c054 with SMTP id
 38308e7fff4ca-38a5d04ed61mr6094121fa.15.1773132138304; Tue, 10 Mar 2026
 01:42:18 -0700 (PDT)
MIME-Version: 1.0
References: <20260309190842.927634-1-vladimir.oltean@nxp.com> <20260309190842.927634-22-vladimir.oltean@nxp.com>
In-Reply-To: <20260309190842.927634-22-vladimir.oltean@nxp.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 10 Mar 2026 16:42:04 +0800
X-Gmail-Original-Message-ID: <CAGb2v649jsoT9Uw5=gg5Zzxmgd4E04f8B8St_vUseP3JOrGG5g@mail.gmail.com>
X-Gm-Features: AaiRm50ffNFGTkd49hJolMVvUoYaIAAtO7JRlAyrrCfXMo0y-iPLjdkpqATmeN0
Message-ID: <CAGb2v649jsoT9Uw5=gg5Zzxmgd4E04f8B8St_vUseP3JOrGG5g@mail.gmail.com>
Subject: Re: [PATCH v3 phy-next 21/24] phy: include PHY provider header (1/2)
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-can@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-ide@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-scsi@vger.kernel.org, 
	linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org, 
	linux-usb@vger.kernel.org, netdev@vger.kernel.org, spacemit@lists.linux.dev, 
	UNGLinuxDriver@microchip.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_084222_151959_7BCB0A8B 
X-CRM114-Status: GOOD (  14.40  )
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBNYXIgMTAsIDIwMjYgYXQgMzoxMOKAr0FNIFZsYWRpbWlyIE9sdGVhbiA8dmxhZGlt
aXIub2x0ZWFuQG54cC5jb20+IHdyb3RlOgo+Cj4gVGhlIG1ham9yaXR5IG9mIFBIWSBkcml2ZXJz
IGFyZSBQSFkgcHJvdmlkZXJzIChvYnZpb3VzbHkpLgo+Cj4gU29tZSBhcmUgcHJvdmlkZXJzICph
bmQqIGNvbnN1bWVycyAocGh5LW1lc29uLWF4Zy1taXBpLWRwaHksCj4gcGh5LW1lc29uLWF4Zy1w
Y2llKS4gVGhlc2UgYXJlIHRoZSBBbWxvZ2ljIEFYRyBTb0NzLCB3aGljaCBzcGxpdCB0aGUKPiBw
aHlzaWNhbCBsYXllciBpbnRvIHR3byBjaGFpbmVkIFBIWXM6IHRoZSBkaWdpdGFsIGxheWVyIGFu
ZCB0aGUgYW5hbG9nCj4gbGF5ZXIuIFRoZSBEU0kgb3IgUENJZSBjb250cm9sbGVyIGludGVyYWN0
cyBvbmx5IHdpdGggdGhlIGRpZ2l0YWwgUEhZLAo+IHByZXN1bWFibHkgZm9yIHNpbXBsaWNpdHku
Cj4KPiBUaGUgcmVzdCBvZiBQSFkgZHJpdmVycyB3aGljaCBpbmNsdWRlIDxsaW51eC9waHkvcGh5
Lmg+IGRvIHNvIGJlY2F1c2UKPiB0aGV5IGNhbGwgcGh5X3NldF9idXNfd2lkdGgoKSwgYSBjb25z
dW1lciBmdW5jdGlvbi4KPgo+IFNpZ25lZC1vZmYtYnk6IFZsYWRpbWlyIE9sdGVhbiA8dmxhZGlt
aXIub2x0ZWFuQG54cC5jb20+Cj4gLS0tCj4gQ29uZmxpY3RzIGluIGRyaXZlcnMvcGh5L2NhbmFh
bi9waHktazIzMC11c2IuYyB3aXRoIGNvbW1pdCA4Nzg3ZmExZGE2MDMKPiAoInBoeTogdXNiOiBB
ZGQgZHJpdmVyIGZvciBDYW5hYW4gSzIzMCBVU0IgMi4wIFBIWSIpLgo+IENvbmZsaWN0cyBpbiBk
cml2ZXJzL3BoeS9lc3dpbi9waHktZWljNzcwMC1zYXRhLmMgd2l0aCBjb21taXQKPiA2N2VlOWNj
YWEzNGEgKCJwaHk6IGVzd2luOiBDcmVhdGUgZXN3aW4gZGlyZWN0b3J5IGFuZCBhZGQgRUlDNzcw
MCBTQVRBCj4gUEhZIGRyaXZlciIpCj4KPiBCb3RoIGRyaXZlcnMgYXJlIG5ld2x5IGFkZGVkIGlu
IGxpbnV4LXBoeS9uZXh0IGFuZCBub3QgcHJlc2VudCBpbgo+IHY3LjAtcmMxLiBUaGUgcmVjb21t
ZW5kYXRpb24gaXMgdG8gZHJvcCB0aGUgY2hhbmdlcyBpbiB0aGlzIHBhdGNoIGFuZAo+IHJlYWRk
IHRoZW0gd2hlbiBtZXJnaW5nIGludG8gbGludXgtcGh5L25leHQuCj4KPiB2Mi0+djM6IGFkZCBj
b25mbGljdCByZXNvbHV0aW9uIGRldGFpbHMKPiB2MS0+djI6IHNwbGl0IGluIHR3byBwYXJ0cyB0
byBwYXNzIHRocm91Z2ggbGludXgtcGh5IG1haWxpbmcgbGlzdAo+IG1vZGVyYXRpb24KPiAtLS0K
PiAgZHJpdmVycy9waHkvYWxsd2lubmVyL3BoeS1zdW40aS11c2IuYyAgICAgICAgICAgICAgICAg
fCAzICsrLQo+ICBkcml2ZXJzL3BoeS9hbGx3aW5uZXIvcGh5LXN1bjUwaS11c2IzLmMgICAgICAg
ICAgICAgICB8IDMgKystCj4gIGRyaXZlcnMvcGh5L2FsbHdpbm5lci9waHktc3VuNmktbWlwaS1k
cGh5LmMgICAgICAgICAgIHwgNCArKy0tCj4gIGRyaXZlcnMvcGh5L2FsbHdpbm5lci9waHktc3Vu
OWktdXNiLmMgICAgICAgICAgICAgICAgIHwgMyArKy0KCkFja2VkLWJ5OiBDaGVuLVl1IFRzYWkg
PHdlbnNAa2VybmVsLm9yZz4gIyBhbGx3aW5uZXIKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
