From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 3/4] drm/rockchip: add missing of_node_put
Date: Sun, 13 Jan 2019 19:48:49 +0100
Message-ID: <3397932.PmTvevuZIG@phil>
References: <1547369264-24831-1-git-send-email-Julia.Lawall@lip6.fr>
 <1547369264-24831-4-git-send-email-Julia.Lawall@lip6.fr>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1547369264-24831-4-git-send-email-Julia.Lawall@lip6.fr>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Julia Lawall <Julia.Lawall@lip6.fr>
Cc: David Airlie <airlied@linux.ie>, kernel-janitors@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

QW0gU29ubnRhZywgMTMuIEphbnVhciAyMDE5LCAwOTo0Nzo0MyBDRVQgc2NocmllYiBKdWxpYSBM
YXdhbGw6Cj4gVGhlIGRldmljZSBub2RlIGl0ZXJhdG9ycyBwZXJmb3JtIGFuIG9mX25vZGVfZ2V0
IG9uIGVhY2ggaXRlcmF0aW9uLCBzbyBhCj4ganVtcCBvdXQgb2YgdGhlIGxvb3AgcmVxdWlyZXMg
YW4gb2Zfbm9kZV9wdXQuCj4gCj4gVGhlIHNlbWFudGljIHBhdGNoIHRoYXQgZml4ZXMgdGhpcyBw
cm9ibGVtIGlzIGFzIGZvbGxvd3MKPiAoaHR0cDovL2NvY2NpbmVsbGUubGlwNi5mcik6Cj4gCj4g
Ly8gPHNtcGw+Cj4gQEAKPiBleHByZXNzaW9uIHJvb3QsZTsKPiBsb2NhbCBpZGV4cHJlc3Npb24g
Y2hpbGQ7Cj4gaXRlcmF0b3IgbmFtZSBmb3JfZWFjaF9jaGlsZF9vZl9ub2RlOwo+IEBACj4gCj4g
IGZvcl9lYWNoX2NoaWxkX29mX25vZGUocm9vdCwgY2hpbGQpIHsKPiAgICAuLi4gd2hlbiAhPSBv
Zl9ub2RlX3B1dChjaGlsZCkKPiAgICAgICAgd2hlbiAhPSBlID0gY2hpbGQKPiArICBvZl9ub2Rl
X3B1dChjaGlsZCk7Cj4gPyAgYnJlYWs7Cj4gICAgLi4uCj4gfQo+IC4uLiB3aGVuICE9IGNoaWxk
Cj4gLy8gPC9zbXBsPgo+IAo+IFNpZ25lZC1vZmYtYnk6IEp1bGlhIExhd2FsbCA8SnVsaWEuTGF3
YWxsQGxpcDYuZnI+CgpJJ3ZlIGFkZGVkIGEgZml4ZXMrc3RhYmxlIHRhZyBhbmQgYXBwbGllZCBp
dCB0byBkcm0tbWlzYy1maXhlcwoKVGhhbmtzIGZvciBjYXRjaGluZyB0aGF0CkhlaWtvCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1h
aWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==
