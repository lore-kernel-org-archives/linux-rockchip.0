Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1151E7717D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Dec 2024 17:32:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WmBgPJG6kG8TWgvaD4I0P3d38OajaRXEK1ZADTWTzdc=; b=xQrp7PQiVP5Pgt
	5xgykWC/MwGdwOG0N3cc9DvgjREAjFw9qDS5YG0UEcp9vGvKpNXN6Bdv8LfwCykfVydRbQSXdezgq
	Wu8Qf4IuT/yy0ZT+C/dCoI30+nJrz3VZxNHdft+/bGtO+4IpD2bMkteDSYtj+rJTdFV+b4jnisVpF
	EfRgLChoxaBEerV4JRJ/Jp7ekckDc0tDSZEozhwMvTVeSZ07oI/Uu4p0838/XmPfy8nNmF94zlIv8
	5vozWpYZB/fWGt0AmU4NS6LQXkDoI7FMwTQZDD3/qHWNTBrjQj+Y0u6SDNiFX+v0sct+zqmRff9gI
	AVpKIbLN5kZOy8zfo6Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLQZC-0000000FcS7-2yHA;
	Wed, 11 Dec 2024 17:32:06 +0000
Received: from mail-qt1-x836.google.com ([2607:f8b0:4864:20::836])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLQZ9-0000000FcRS-4AN7
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Dec 2024 17:32:05 +0000
Received: by mail-qt1-x836.google.com with SMTP id d75a77b69052e-467725245a2so18936931cf.3
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Dec 2024 09:32:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733938322; x=1734543122; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GxYALFom9UH9kQAVT7MYsh29n809R/QXySqyFuen/1E=;
        b=Ggv3OodmugWo1ADsK2gTk0sQijMLfUnZjAz+joIDAuEtNCR+/vmpl9XUpyg8wlyqom
         amMZ/FrxFhHoUiBZmB48/l7YRcnk7EN0J6Hquub3xmKJ5xUbf49TOcPElEi9eXq/fqel
         YTq5u5riGD+dO0eVtOyEjXLOeqbkX5ew4S9sDZKxpI+jsGdsyji8GY39X669R8fPbDHx
         cWYDLsiBC7+gZuv3QOI/zt5otIFiWKV4VP1C7yuC5e//9bwOSMY4HS8xhAplvn0nWfy0
         ppWCo7ce69isy/nkuJRJTVEBNp0n+Ffh/M+KFGOuQO++kxTsCkS3IrqtvXH5sYPDot9K
         Ri3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733938322; x=1734543122;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GxYALFom9UH9kQAVT7MYsh29n809R/QXySqyFuen/1E=;
        b=HAsiC/xJjhJfspRgPH8MJXYTHKHWAPZCnoH5U60Y7WjKMPwaxUSxVjtpfk+0qZai4S
         wC2f6+FSwTsafhD2+lkh3YHLgkZtLHLM+tCfDIlA8fIrqKdXrJvx5vQLcieNjDdkChr/
         xb3Z8W2/h4bq1CHAeSjAaMog/w9OC+Z37nYsRa04Szf3LsSa/ELwu1wwF4SpccmsjDa+
         cvhf0zvGgY6zAbM2VIhL4PVZRSfosAD6iJ6itRaWGlUC2BCVsp5ZNldCiYweTj5X9fqS
         o4XPUoBuYpneOG1lXDL9udgzj6DXhN4x23EpqrwCLmtNgsB+hAEKsUH2Hd3MAy2gdGOP
         YUJw==
X-Gm-Message-State: AOJu0Yz8TISPvoQmd524lVUdv5LUTpmSQyL7GXPV9z5MESKoe0O1HZWq
	x5H0FWcBWv9FULFNpBL0ZIWIJNwUsPWJp1GKyqYT+LlJCW3nRNJpe+2XnD0Lfu3mUrBfoh/9aJ0
	WOok6OymnR8qikmE4Qy+BzwutJVVzq/8B
X-Gm-Gg: ASbGncu1HuumFNmpL0XbzsPOjmXPQjFNMJk06zxj0debTm/SvJ9dvCuG604ZfhkXkz6
	14GHtJzk2poUlB8kHIvH76r3V+W37Cxtf308=
X-Google-Smtp-Source: AGHT+IFTg0ZW1gmIfeOSrQu7R8etmRSdY51/VGPkxLIUBiGAwMrHl6Fgwq+UoJtyuMSoiJHs18spm9YmztEElpkol04=
X-Received: by 2002:a05:622a:354:b0:467:4380:76f6 with SMTP id
 d75a77b69052e-46796157091mr3114051cf.11.1733938322544; Wed, 11 Dec 2024
 09:32:02 -0800 (PST)
MIME-Version: 1.0
References: <CAAMcf8DL27-PYdEJ4eX1-PJnQDWB0osgHR0gbHAcr_oRniWOOg@mail.gmail.com>
 <4929144.F8r316W7xa@diego> <CAAMcf8A8Y1js5Xt5FDOwq=dTw82UuZar0P6DVsJDgngRxPmtBw@mail.gmail.com>
 <2855083.6YUMPnJmAY@diego>
In-Reply-To: <2855083.6YUMPnJmAY@diego>
From: Vicente Bergas <vicencb@gmail.com>
Date: Wed, 11 Dec 2024 18:31:51 +0100
Message-ID: <CAAMcf8Bf_iD8qpE3FqRUTweHFAk-5HuDsA3Q56POVtOtqpa4NQ@mail.gmail.com>
Subject: Re: PCIe missing on RK3399
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_093204_029952_8098EF93 
X-CRM114-Status: GOOD (  26.62  )
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

T24gV2VkLCBEZWMgMTEsIDIwMjQgYXQgNDozNeKAr1BNIEhlaWtvIFN0w7xibmVyIDxoZWlrb0Bz
bnRlY2guZGU+IHdyb3RlOgo+Cj4gQW0gTWl0dHdvY2gsIDExLiBEZXplbWJlciAyMDI0LCAxNjox
MDoyMSBDRVQgc2NocmllYiBWaWNlbnRlIEJlcmdhczoKPiA+IE9uIFdlZCwgRGVjIDExLCAyMDI0
IGF0IDI6MzbigK9QTSBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKPiA+
ID4KPiA+ID4gSGkgVmljZW50ZSwKPiA+Cj4gPiBIaSBIZWlrbywKPiA+IHRoYW5rcyBmb3IgdGFr
aW5nIGEgbG9vayBhdCBpdCEKPiA+Cj4gPiA+IEFtIE1pdHR3b2NoLCAxMS4gRGV6ZW1iZXIgMjAy
NCwgMTM6NTU6MDEgQ0VUIHNjaHJpZWIgVmljZW50ZSBCZXJnYXM6Cj4gPiA+ID4gaSd2ZSB0ZXN0
ZWQgdGhlIExpbnV4IGtlcm5lbCA2LjEzLXJjMSBhbmQgcmMyIGFuZCBpbiBib3RoIGNhc2VzIFBD
SWUKPiA+ID4gPiBpcyBub3QgZGV0ZWN0ZWQgb24gdGhlIFJLMzM5OSBwbGF0Zm9ybSAocmszMzk5
LWdydS1rZXZpbiksIHdoZXJlYXMgdGhlCj4gPiA+ID4ga2VybmVsIHZlcnNpb24gNi4xMi4zIHdv
cmtzIGZpbmUuCj4gPiA+ID4KPiA+ID4gPiA2LjEzIGNvbmZpZ3VyYXRpb24gaXMgYmFzZWQgb24g
dGhlIHNhbWUgb25lIGFzIDYuMTIgYW5kIHRoZXJlIGFyZW4ndAo+ID4gPiA+IGFueSBzaWduaWZp
Y2FudCBQQ0ktcmVsYXRlZCBkaWZmZXJlbmNlcy4KPiA+ID4gPgo+ID4gPiA+IFRoZSBtZXNzYWdl
cyBmcm9tIGRtZXNnIG9uIDYuMTMgZG9uJ3Qgc2hvdyBhbnkgUENJLXJlbGF0ZWQgZXJyb3JzLgo+
ID4gPiA+Cj4gPiA+ID4gRG9lcyBzb21lYm9keSBrbm93IHdoYXQgaXMgZ29pbmcgb24/Cj4gPiA+
Cj4gPiA+IHNvIEkganVzdCBib290ZWQgYSByazMzOTktcHVtYS1oYWlrb3Ugd2l0aCBhIHBjaS1u
dm1lLWFkYXB0ZXIgaW4gdGhlCj4gPiA+IHBjaWUgc2xvdC4gQW5kIEkgZ2V0Ogo+ID4gPgo+ID4g
PiBbICAgIDAuMDAwMDAwXSBCb290aW5nIExpbnV4IG9uIHBoeXNpY2FsIENQVSAweDAwMDAwMDAw
MDAgWzB4NDEwZmQwMzRdCj4gPiA+IFsgICAgMC4wMDAwMDBdIExpbnV4IHZlcnNpb24gNi4xMy4w
LXJjMi0wMDEwMS1nMjYwYWU2MzczNGZmLWRpcnR5IChoc3R1ZWJuZXJAcGhpbCkgKGFhcmNoNjQt
bGludXgtZ251LWdjYyAoRGViaWFuIDE0LjIuMC02KSAxNC4yLjAsIEdOVSBsZCAoR05VIEJpbnV0
aWxzIGZvciBEZWJpYW4pIDIuNDMuMSkgIzExMzQgU01QIFBSRUVNUFQgVHVlIERlYyAxMCAyMTow
NjozNCBDRVQgMjAyNAo+ID4gPiAuLi4KPiA+ID4gWyAgICAzLjQyODExNF0gcm9ja2NoaXAtcGNp
ZSBmODAwMDAwMC5wY2llOiBob3N0IGJyaWRnZSAvcGNpZUBmODAwMDAwMCByYW5nZXM6Cj4gPiA+
IFsgICAgMy40MzU5NzhdIHJvY2tjaGlwLXBjaWUgZjgwMDAwMDAucGNpZTogICAgICBNRU0gMHgw
MGZhMDAwMDAwLi4weDAwZmJkZmZmZmYgLT4gMHgwMGZhMDAwMDAwCj4gPiA+IFsgICAgMy40NDU0
NzhdIHJvY2tjaGlwLXBjaWUgZjgwMDAwMDAucGNpZTogICAgICAgSU8gMHgwMGZiZTAwMDAwLi4w
eDAwZmJlZmZmZmYgLT4gMHgwMGZiZTAwMDAwCj4gPiA+IFsgICAgMy40NTUyOThdIHJvY2tjaGlw
LXBjaWUgZjgwMDAwMDAucGNpZTogdXNpbmcgRFQgJy9wY2llQGY4MDAwMDAwJyBmb3IgJ2VwJyBH
UElPIGxvb2t1cAo+ID4gPgo+ID4gPiBTbyB0aGVyZSBzZWVtcyB0byBiZSBub3Qgc29tZSBnZW5l
cmFsIGZhaWx1cmUuCj4gPiA+Cj4gPiA+IERvZXMKPiA+ID4gICAgICAgICAjIGxzIC9zeXMvZGV2
aWNlcy9wbGF0Zm9ybS9mODAwMDAwMC5wY2llCj4gPiA+IGxpc3Qgc29tZSAid2FpdGluZ19mb3Jf
c3VwcGxpZXMiIG9yIHNvbWV0aGluZz8KPiA+Cj4gPiB5ZXMsIGluZGVlZCB0aGVyZSBpcyBzdWNo
IGEgZmlsZSBpbiB0aGVyZToKPiA+Cj4gPiAjIyMgNi4xMy1yYzIKPiA+ICQgbHMgL3N5cy9kZXZp
Y2VzL3BsYXRmb3JtL2Y4MDAwMDAwLnBjaWUKPiA+IHBvd2VyCj4gPiBkcml2ZXJfb3ZlcnJpZGUK
PiA+IG1vZGFsaWFzCj4gPiBvZl9ub2RlCj4gPiBzdWJzeXN0ZW0KPiA+IHN1cHBsaWVyOnBsYXRm
b3JtOmZmNzIwMDAwLmdwaW8KPiA+IHN1cHBsaWVyOnBsYXRmb3JtOmZmNzcwMDAwLnN5c2Nvbjpw
Y2llLXBoeQo+ID4gc3VwcGxpZXI6cGxhdGZvcm06ZmY3ODAwMDAuZ3Bpbwo+ID4gc3VwcGxpZXI6
cGxhdGZvcm06cGluY3RybAo+ID4gc3VwcGxpZXI6cGxhdGZvcm06cmVndWxhdG9yLXBwMzMwMC13
aWZpLWJ0Cj4gPiBzdXBwbGllcjpwbGF0Zm9ybTpyZWd1bGF0b3Itd2xhbi1wZC1uCj4gPiB1ZXZl
bnQKPiA+IHdhaXRpbmdfZm9yX3N1cHBsaWVyCj4gPgo+ID4gJCBjYXQgL3N5cy9kZXZpY2VzL3Bs
YXRmb3JtL2Y4MDAwMDAwLnBjaWUvd2FpdGluZ19mb3Jfc3VwcGxpZXIKPiA+IDEKPiA+Cj4gPiAj
IyMgNi4xMi4zCj4gPiAkIGxzIC9zeXMvZGV2aWNlcy9wbGF0Zm9ybS9mODAwMDAwMC5wY2llCj4g
PiBwY2kwMDAwOjAwCj4gPiBwb3dlcgo+ID4gZHJpdmVyCj4gPiBkcml2ZXJfb3ZlcnJpZGUKPiA+
IG1vZGFsaWFzCj4gPiBvZl9ub2RlCj4gPiBzdWJzeXN0ZW0KPiA+IHN1cHBsaWVyOnBoeTpwaHkt
ZmY3NzAwMDAuc3lzY29uOnBjaWUtcGh5LjUKPiA+IHN1cHBsaWVyOnBoeTpwaHktZmY3NzAwMDAu
c3lzY29uOnBjaWUtcGh5LjYKPiA+IHN1cHBsaWVyOnBoeTpwaHktZmY3NzAwMDAuc3lzY29uOnBj
aWUtcGh5LjcKPiA+IHN1cHBsaWVyOnBoeTpwaHktZmY3NzAwMDAuc3lzY29uOnBjaWUtcGh5LjgK
PiA+IHN1cHBsaWVyOnBsYXRmb3JtOmZmNzcwMDAwLnN5c2NvbjpwY2llLXBoeQo+ID4gc3VwcGxp
ZXI6cGxhdGZvcm06ZmY3ODAwMDAuZ3Bpbwo+ID4gc3VwcGxpZXI6cGxhdGZvcm06cGluY3RybAo+
ID4gc3VwcGxpZXI6cGxhdGZvcm06cHAzMzAwLXdpZmktYnQKPiA+IHN1cHBsaWVyOnBsYXRmb3Jt
OnBwOTAwLWFwCj4gPiBzdXBwbGllcjpwbGF0Zm9ybTp3bGFuLXBkLW4KPiA+IHN1cHBsaWVyOnJl
Z3VsYXRvcjpyZWd1bGF0b3IuMTcKPiA+IHN1cHBsaWVyOnJlZ3VsYXRvcjpyZWd1bGF0b3IuMjMK
PiA+IHN1cHBsaWVyOnJlZ3VsYXRvcjpyZWd1bGF0b3IuMjUKPiA+IHVldmVudAo+ID4KPiA+IFdo
YXQgZG9lcyB0aGF0IG1lYW4/Cj4KPiB3YWl0aW5nX2Zvcl9zdXBwbGllciBtZWFucyB0aGF0IHNv
bWUgc3VwcGxpZXIgaGFzIG5vdCB5ZXQgcHJvYmVkCj4gYW5kIHRodXMgdGhlIGRyaXZlciBhbHNv
IGNhbm5vdCBwcm9iZSB5ZXQuCj4KPiBCdXQgeW91ciA2LjEzLXJjMiBzdXBwbGllciBsaXN0IGRv
ZXMgbG9vayB3YXkgdG9vIHNob3J0LiBJbiBteSBib290IG9uCj4gcmszMzk5LXB1bWEtaGFpa291
IGFib3ZlLCBJIGdvdDoKPgo+ICQgbHMgL3N5cy9kZXZpY2VzL3BsYXRmb3JtL2Y4MDAwMDAwLnBj
aWUKPiBkcml2ZXIKPiBkcml2ZXJfb3ZlcnJpZGUKPiBtb2RhbGlhcwo+IG9mX25vZGUKPiBwY2kw
MDAwOjAwCj4gcG93ZXIKPiBzdWJzeXN0ZW0KPiBzdXBwbGllcjpwaHk6cGh5LWZmNzcwMDAwLnN5
c2NvbjpwY2llLXBoeS4yCj4gc3VwcGxpZXI6cGh5OnBoeS1mZjc3MDAwMC5zeXNjb246cGNpZS1w
aHkuMwo+IHN1cHBsaWVyOnBoeTpwaHktZmY3NzAwMDAuc3lzY29uOnBjaWUtcGh5LjQKPiBzdXBw
bGllcjpwaHk6cGh5LWZmNzcwMDAwLnN5c2NvbjpwY2llLXBoeS41Cj4gc3VwcGxpZXI6cGxhdGZv
cm06ZmY3NzAwMDAuc3lzY29uOnBjaWUtcGh5Cj4gc3VwcGxpZXI6cGxhdGZvcm06ZmY3OTAwMDAu
Z3Bpbwo+IHN1cHBsaWVyOnBsYXRmb3JtOnBpbmN0cmwKPiBzdXBwbGllcjpwbGF0Zm9ybTpyZWd1
bGF0b3ItZGMtMTJ2Cj4gc3VwcGxpZXI6cGxhdGZvcm06cmVndWxhdG9yLXZjYzN2My1iYXNlYm9h
cmQKPiBzdXBwbGllcjpwbGF0Zm9ybTpyZWd1bGF0b3ItdmNjYS0wdjkKPiBzdXBwbGllcjpwbGF0
Zm9ybTpyZWd1bGF0b3ItdmNjYS0xdjgKPiBzdXBwbGllcjpyZWd1bGF0b3I6cmVndWxhdG9yLjEw
Cj4gc3VwcGxpZXI6cmVndWxhdG9yOnJlZ3VsYXRvci4xMQo+IHN1cHBsaWVyOnJlZ3VsYXRvcjpy
ZWd1bGF0b3IuMjkKPiBzdXBwbGllcjpyZWd1bGF0b3I6cmVndWxhdG9yLjMKPiB1ZXZlbnQKCkp1
c3QgdGVzdGVkIDYuMTMtcmMyIHdpdGggdGhlIERUQiBmcm9tIDYuMTIuMyBhbmQgaXQgd29ya3Mg
ZmluZS4gU28sCml0IGlzIGEgRFQgaXNzdWUuCkkgc3VzcGVjdCB0aGlzIGNvbW1pdCBtYXkgYmUg
dGhlIHJvb3QgY2F1c2U6CjVjOTZlNjMzMDE5NzhmNDY1N2M5MDgyYzU1YTA2Njc2M2M4ZGI3YjEK
YXJtNjQ6IGR0czogcm9ja2NoaXA6IGFkYXB0IHJlZ3VsYXRvciBub2RlbmFtZXMgdG8gcHJlZmVy
cmVkIGZvcm0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
