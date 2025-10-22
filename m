Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F609CCD1AB
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Oct 2025 03:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6x4GAX5Zg5k+3gDTa+s3QgyDXADXvTrkSd5iL9cihSM=; b=vECdy+LZ9Gh4gH
	NH1CiSYknEbcZrl6zb5fT/v+/W0xXyOWHfwLnKI7dmjS7jqIq7FYrKuPMlfK4p1Dn4FT2sZRJF+dl
	o2fNkD+2XtWFXUUZ15W477v5gQP2E4wBHQeCsJx8TJGDOCF/o1bW/YOio5bQNGIKPjuYoIehy5/lL
	QHBPfEMgGehoWNogrz/DPFvw+l2+kUE70NCKZu0qfrB7+LlOGi13spKXosxLwldMCAeX+J9Le9tfL
	Ba6dnEiooZS8tkRaQUdaPIcshiSTgWqDIGGMzFeKpGLAU1LgM5mI/I4/XrMppTPU6+sn1r8BEJsbH
	0HVv6CPHxQR4Ph2Wpe4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBPQA-00000001Jjj-3KvI;
	Wed, 22 Oct 2025 03:21:54 +0000
Received: from mail-m21472.qiye.163.com ([117.135.214.72])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBPQ7-00000001Jhq-0npG;
	Wed, 22 Oct 2025 03:21:53 +0000
Received: from [172.16.12.30] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 26bd00351;
	Wed, 22 Oct 2025 11:21:43 +0800 (GMT+08:00)
Message-ID: <5a551943-141a-4842-a4d0-b66b32cf3e70@rock-chips.com>
Date: Wed, 22 Oct 2025 11:21:43 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/7] dt-bindings: clock, reset: Add support for rv1126b
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com,
 sboyd@kernel.org, sugar.zhang@rock-chips.com, robh@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, huangtao@rock-chips.com,
 finley.xiao@rock-chips.com, Conor Dooley <conor.dooley@microchip.com>
References: <20251021065232.2201500-1-zhangqing@rock-chips.com>
 <20251021065232.2201500-3-zhangqing@rock-chips.com> <4463339.ejJDZkT8p0@phil>
From: zhangqing <zhangqing@rock-chips.com>
In-Reply-To: <4463339.ejJDZkT8p0@phil>
X-HM-Tid: 0a9a09efd41b03a3kunm7b6dc5c66e4f96
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGU8aGVYYTUsfQh5KGhlMSx5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=gGZPUQhJfHp4kvwOmpCT54yGpj+RvSNLLBZIvOwIq0JBMw+xfp4HUlM8CNWg2uS8J0FfRU9ovd2A3Ud1RGfHpJdw8CLVA/V/IZsTsItStaptUzEUDq3l2qRAuB4K9YLoMF5CoDJNFsG3cxVe6mb7EFKyp0QW2y6uMenc9a/zhaM=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=ipg6mZebV/FQJ02tqFTMP9sueHte0K5Fd4JfkmgRrwU=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_202151_826189_761BA46E 
X-CRM114-Status: GOOD (  12.70  )
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

SGksIEhlaWtvOgoK5ZyoIDIwMjUvMTAvMjEgMTY6MzgsIEhlaWtvIFN0dWVibmVyIOWGmemBkzoK
PiBIaSBFbGFpbmUsCj4KPiBBbSBEaWVuc3RhZywgMjEuIE9rdG9iZXIgMjAyNSwgMDg6NTI6Mjcg
TWl0dGVsZXVyb3DDpGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBFbGFpbmUgWmhhbmc6Cj4+IEFk
ZCBjbG9jayBhbmQgcmVzZXQgSUQgZGVmaW5lcyBmb3IgcnYxMTI2Yi4KPj4gQWxzbyBhZGQgZG9j
dW1lbnRhdGlvbiBmb3IgdGhlIHJ2MTEyNmIgQ1JVIGNvcmUuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6
IEVsYWluZSBaaGFuZyA8emhhbmdxaW5nQHJvY2stY2hpcHMuY29tPgo+PiBBY2tlZC1ieTogQ29u
b3IgRG9vbGV5IDxjb25vci5kb29sZXlAbWljcm9jaGlwLmNvbT4KPj4gLS0tCj4+ICAgLi4uL2Jp
bmRpbmdzL2Nsb2NrL3JvY2tjaGlwLHJ2MTEyNmItY3J1LnlhbWwgIHwgIDUyICsrKwo+PiAgIC4u
Li9kdC1iaW5kaW5ncy9jbG9jay9yb2NrY2hpcCxydjExMjZiLWNydS5oICB8IDM5MiArKysrKysr
KysrKysrKysrKwo+PiAgIC4uLi9kdC1iaW5kaW5ncy9yZXNldC9yb2NrY2hpcCxydjExMjZiLWNy
dS5oICB8IDQwNSArKysrKysrKysrKysrKysrKysKPj4gICAzIGZpbGVzIGNoYW5nZWQsIDg0OSBp
bnNlcnRpb25zKCspCj4+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9jbG9jay9yb2NrY2hpcCxydjExMjZiLWNydS55YW1sCj4+ICAgY3JlYXRl
IG1vZGUgMTAwNjQ0IGluY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svcm9ja2NoaXAscnYxMTI2Yi1j
cnUuaAo+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2R0LWJpbmRpbmdzL3Jlc2V0L3Jv
Y2tjaGlwLHJ2MTEyNmItY3J1LmgKPj4KPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9jbG9jay9yb2NrY2hpcCxydjExMjZiLWNydS55YW1sIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL3JvY2tjaGlwLHJ2MTEyNmItY3J1Lnlh
bWwKPj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPj4gaW5kZXggMDAwMDAwMDAwMDAwLi4wNGIwYTVj
NTFlNGUKPj4gLS0tIC9kZXYvbnVsbAo+PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvY2xvY2svcm9ja2NoaXAscnYxMTI2Yi1jcnUueWFtbAo+PiBAQCAtMCwwICsxLDUy
IEBACj4+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkgT1IgQlNELTIt
Q2xhdXNlCj4+ICslWUFNTCAxLjIKPj4gKy0tLQo+PiArJGlkOiBodHRwOi8vZGV2aWNldHJlZS5v
cmcvc2NoZW1hcy9jbG9jay9yb2NrY2hpcCxydjExMjZiLWNydS55YW1sIwo+PiArJHNjaGVtYTog
aHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCj4+ICsKPj4gK3Rp
dGxlOiBSb2NrY2hpcCBSVjExMjZCIENsb2NrIGFuZCBSZXNldCBVbml0Cj4+ICsKPj4gK21haW50
YWluZXJzOgo+PiArICAtIEVsYWluZSBaaGFuZyA8emhhbmdxaW5nQHJvY2stY2hpcHMuY29tPgo+
PiArICAtIEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4+ICsKPj4gK2Rlc2NyaXB0
aW9uOgo+PiArICBUaGUgcnYxMTI2YiBjbG9jayBjb250cm9sbGVyIGdlbmVyYXRlcyB0aGUgY2xv
Y2sgYW5kIGFsc28gaW1wbGVtZW50cyBhCj4+ICsgIHJlc2V0IGNvbnRyb2xsZXIgZm9yIFNvQyBw
ZXJpcGhlcmFscy4KPj4gKwo+PiArcHJvcGVydGllczoKPj4gKyAgY29tcGF0aWJsZToKPj4gKyAg
ICBlbnVtOgo+PiArICAgICAgLSByb2NrY2hpcCxydjExMjZiLWNydQo+PiArCj4+ICsgIHJlZzoK
Pj4gKyAgICBtYXhJdGVtczogMQo+PiArCj4+ICsgICIjY2xvY2stY2VsbHMiOgo+PiArICAgIGNv
bnN0OiAxCj4+ICsKPj4gKyAgIiNyZXNldC1jZWxscyI6Cj4+ICsgICAgY29uc3Q6IDEKPj4gKwo+
PiArICBjbG9ja3M6Cj4+ICsgICAgbWF4SXRlbXM6IDEKPj4gKwo+PiArICBjbG9jay1uYW1lczoK
Pj4gKyAgICBjb25zdDogeGluMjRtCj4gSSB0aGluayB3ZSdyZSBtaXNzaW5nIHRoZSBvcHRpb25h
bAo+Cj4gICAgIHJvY2tjaGlwLGdyZjoKPiAgICAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1s
Iy9kZWZpbml0aW9ucy9waGFuZGxlCj4gICAgICAgZGVzY3JpcHRpb246Cj4gICAgICAgICBQaGFu
ZGxlIHRvIHRoZSBzeXNjb24gbWFuYWdpbmcgdGhlICJnZW5lcmFsIHJlZ2lzdGVyIGZpbGVzIiAo
R1JGKSwKPiAgICAgICAgIGlmIG1pc3NpbmcgcGxsIHJhdGVzIGFyZSBub3QgY2hhbmdlYWJsZSwg
ZHVlIHRvIHRoZSBtaXNzaW5nIHBsbAo+ICAgICAgICAgbG9jayBzdGF0dXMuCj4KPgo+IGJlY2F1
c2UgUlYxMTI2Ql9HUkZfU09DX1NUQVRVUzAgY29udGFpbnMgdGhlIFBMTCBsb2NrIHN0YXR1cy4K
VGhlIHBsbCBsb2NrIHRydWx5IHVzZXMgYml0MTAgb2YgdGhlIFBMTF9DT04xIHJlZ2lzdGVyIG9m
IENSVSBhbmQgZG9lcyAKbm90IHVzZSBncmYuIERvZXMgdGhhdCBtZWFuIHRoZXJlIGlzIG5vIG5l
ZWQgdG8gaW5jcmVhc2Ugcm9ja2NoaXAsZ3Jm77yfCj4KPgo+IEhlaWtvCj4KPgo+Cj4KLS0gCuW8
oOaZtArnkZ7oiq/lvq7nlLXlrZDogqHku73mnInpmZDlhazlj7gKUm9ja2NoaXAgRWxlY3Ryb25p
Y3MgQ28uLEx0ZArlnLDlnYDvvJrnpo/lu7rnnIHnpo/lt57luILpk5znm5jot6/ova/ku7blpKfp
gZM4OeWPt+i9r+S7tuWbrUHljLoyMeWPt+alvApBZGQ6Tm8uMjEgQnVpbGRpbmcsIEEgRGlzdHJp
Y3QsIE5vLjg5IFNvZnR3YXJlIEJvdWxldmFyZCBGdXpob3UsIEZ1amlhbiAzNTAwMDMsIFAuUi5D
aGluYQpUZWw6Kzg2LTA1OTEtODM5OTE5MDYtODYwMQrpgq7nvJbvvJozNTAwMDMKRS1tYWlsOmVs
YWluZS56aGFuZ0Byb2NrLWNoaXBzLmNvbQoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqCuS/neWvhuaPkOek
uu+8muacrOmCruS7tuWPiuWFtumZhOS7tuWQq+acieacuuWvhuS/oeaBr++8jOS7heWPkemAgee7
meacrOmCruS7tuaJgOaMh+eJueWumuaUtuS7tuS6uuOAguiLpemdnuivpeeJueWumuaUtuS7tuS6
uu+8jOivt+WLv+WkjeWItuOAgeS9v+eUqOaIluaKq+mcsuacrOmCruS7tueahOS7u+S9leWGheWu
ueOAguiLpeivr+aUtuacrOmCruS7tu+8jOivt+S7juezu+e7n+S4reawuOS5heaAp+WIoOmZpOac
rOmCruS7tuWPiuaJgOaciemZhOS7tu+8jOW5tuS7peWbnuWkjemCruS7tuaIluWFtuS7luaWueW8
j+WNs+WIu+WRiuefpeWPkeS7tuS6uuOAguemj+W3nueRnuiKr+W+rueUteWtkOaciemZkOWFrOWP
uOaLpeacieacrOmCruS7tuS/oeaBr+eahOiRl+S9nOadg+WPiuino+mHiuadg++8jOemgeatouS7
u+S9leacque7j+aOiOadg+iuuOWPr+eahOS+teadg+ihjOS4uuOAggoKSU1QT1JUQU5UIE5PVElD
RTogVGhpcyBlbWFpbCBpcyBmcm9tIEZ1emhvdSBSb2NrY2hpcCBFbGVjdHJvbmljcyBDby4sIEx0
ZCAuVGhlIGNvbnRlbnRzIG9mIHRoaXMgZW1haWwgYW5kIGFueSBhdHRhY2htZW50cyBtYXkgY29u
dGFpbiBpbmZvcm1hdGlvbiB0aGF0IGlzIHByaXZpbGVnZWQsIGNvbmZpZGVudGlhbCBhbmQvb3Ig
ZXhlbXB0IGZyb20gZGlzY2xvc3VyZSB1bmRlciBhcHBsaWNhYmxlIGxhdyBhbmQgcmVsZXZhbnQg
TkRBLiBJZiB5b3UgYXJlIG5vdCB0aGUgaW50ZW5kZWQgcmVjaXBpZW50LCB5b3UgYXJlIGhlcmVi
eSBub3RpZmllZCB0aGF0IGFueSBkaXNjbG9zdXJlLCBjb3B5aW5nLCBkaXN0cmlidXRpb24sIG9y
IHVzZSBvZiB0aGUgaW5mb3JtYXRpb24gaXMgU1RSSUNUTFkgUFJPSElCSVRFRC4gUGxlYXNlIGlt
bWVkaWF0ZWx5IGNvbnRhY3QgdGhlIHNlbmRlciBhcyBzb29uIGFzIHBvc3NpYmxlIGFuZCBkZXN0
cm95IHRoZSBtYXRlcmlhbCBpbiBpdHMgZW50aXJldHkgaW4gYW55IGZvcm1hdC4gVGhhbmsgeW91
LgoKKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
