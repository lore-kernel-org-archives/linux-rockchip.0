From: Yakir <ykk-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH v3 2/3] drm: bridge/dw_hdmi_rockchip: improve hdmi
 eye-diagram test
Date: Wed, 01 Apr 2015 08:41:32 +0800
Message-ID: <551B3EBC.2010207@rock-chips.com>
References: <1425894141-360-1-git-send-email-ykk@rock-chips.com>
 <1425894199-489-1-git-send-email-ykk@rock-chips.com>
 <20150331165758.GV24899@n2100.arm.linux.org.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20150331165758.GV24899-l+eeeJia6m9vn6HldHNs0ANdhmdF6hFW@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

SGkgUnVzc2VsbCwKCuWcqCAyMDE1LzQvMSAwOjU3LCBSdXNzZWxsIEtpbmcgLSBBUk0gTGludXgg
5YaZ6YGTOgo+IE9uIE1vbiwgTWFyIDA5LCAyMDE1IGF0IDA1OjQzOjE5UE0gKzA4MDAsIFlha2ly
IFlhbmcgd3JvdGU6Cj4+IEFzIGZvciAxOTIweDEwODAgZGlzcGxheSByZXNvbHV0aW9uLCB3ZSBz
aG91bGQgdHVybiBvbiB0aGUKPj4gVHJhbnNtaXR0ZXIgVHJhaWxlci1CLgo+Pgo+PiBTaWduZWQt
b2ZmLWJ5OiBZYWtpciBZYW5nIDx5a2tAcm9jay1jaGlwcy5jb20+Cj4+IC0tLQo+IEJUVywgb25l
IG9mOgo+Cj4gICBkcm0vcm9ja2NoaXA6IGR3X2hkbWktcm9ja2NoaXA6IC4uLgo+ICAgZHJtL3Jv
Y2tjaGlwOiBkd19oZG1pOiAuLi4KPiAgIGRybTogcm9ja2NoaXA6IGR3X2hkbWktcm9ja2NoaXA6
IC4uLgo+ICAgZHJtOiByb2NrY2hpcDogZHdfaGRtaTogLi4uCj4gICBkcm06IHJvY2tjaGlwL2R3
X2hkbWktcm9ja2NoaXA6IC4uLgo+ICAgZHJtOiByb2NrY2hpcC9kd19oZG1pOiAuLi4KT2theSwg
SSBjaG9vc2UgdGhlICJkcm06IHJvY2tjaGlwL2R3X2hkbWktcm9ja2NoaXA6IC4uLiIsIGltcHJv
dmUgaW4gdjQKClRoYW5rcyA6KQpZYWtpciBZYW5nCj4gbWlnaHQgYmUgYSBiZXR0ZXIgc3ViamVj
dCBsaW5lIGZvciBwYXRjaGVzIHdoaWNoIG9ubHkgdG91Y2ggdGhlIHJvY2tjaGlwCj4gcGFydCBv
ZiB0aGlzIGRyaXZlci4gIEknZCBhbHNvIHN1Z2dlc3Qgb25lIG9mOgo+Cj4gICBkcm0vaW14OiBk
d19oZG1pLWlteDogLi4uCj4gICBkcm0vaW14OiBkd19oZG1pOiAuLi4KPiAgIGRybTogaW14OiBk
d19oZG1pLWlteDogLi4uCj4gICBkcm06IGlteDogZHdfaGRtaTogLi4uCj4gICBkcm06IGlteC9k
d19oZG1pLWlteDogLi4uCj4gICBkcm06IGlteC9kd19oZG1pOiAuLi4KPgo+IGZvciBpTVgtb25s
eSBwYXRjaGVzLiAgSXQgZG9lc24ndCByZWFsbHkgbWF0ZXIgd2hpY2ggYXMgd2UgYWxyZWFkeSBo
YXZlCj4gYSBtaXh0dXJlIG9mIHRoZXNlIGZvcm1hdHMgYWxyZWFkeS4KPgoKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
