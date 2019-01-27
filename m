From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] drm/rockchip: check yuv2yuv existence before assigning
 window data
Date: Sun, 27 Jan 2019 21:43:16 +0100
Message-ID: <10465324.L3QdQsylM5@phil>
References: <2556882.Heuq80WCVD@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <2556882.Heuq80WCVD@phil>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: dri-devel@lists.freedesktop.org
Cc: ezequiel@collabora.com, linux-rockchip@lists.infradead.org, dcastagna@chromium.org
List-Id: linux-rockchip.vger.kernel.org

QW0gU2Ftc3RhZywgMjYuIEphbnVhciAyMDE5LCAwMToyNDozNyBDRVQgc2NocmllYiBIZWlrbyBT
dHVlYm5lcjoKPiBCZWZvcmUgYXNzaWduaW5nIHdpbmRvdyBkYXRhLCB3ZSBzaG91bGQgY2hlY2sg
aWYgdGhlIHl1djJ5dXYgdm9wLWRhdGEKPiBpcyBzZXQgYXQgYWxsLCBiZWNhdXNlIGl0IGxvb2tz
IGxpa2UgaXQgY2FuIG90aGVyd2lzZSByZWZlcmVuY2Ugc29tZXRoaW5nCj4gd3JvbmcsIGFzIEkg
c2F3IG9uIG15IHJrMzE4OCB0b2RheSB3aGljaCBlbmRlZCB1cCBpbiBhIG51bGwgcG9pbnRlcgo+
IGRlcmVmZXJlbmNlIGluIHZvcF9wbGFuZV9hdG9taWNfdXBkYXRlIHdoZW4gYWNjZXNzaW5nIHRo
ZSB5dXYyeXV2IGRhdGEuCj4gCj4gRml4ZXM6IDFjMjFhYThmMmI2OCAoImRybS9yb2NrY2hpcDog
Rml4IFlVViBidWZmZXJzIGNvbG9yIHJlbmRlcmluZyIpCj4gU2lnbmVkLW9mZi1ieTogSGVpa28g
U3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KCmFwcGxpZWQgdG8gZHJtLW1pc2MtbmV4dCB3aGVy
ZSB0aGUgZml4ZWQgY29tbWl0IGFsc28gd2FpdHMgZm9yIHRoZQpuZXh0IG1lcmdlLXdpbmRvdy4K
CgpIZWlrbwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=
